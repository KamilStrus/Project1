using ProjektAplikacjaBazodanowa.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ProjektAplikacjaBazodanowa
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static ObservableCollection<EMP> ColEMP = new ObservableCollection<EMP>();
        public static ObservableCollection<EMP> Znalezieni = new ObservableCollection<EMP>();
        public MainWindow()
        {
            InitializeComponent();

            int sizeoflist;


            var con = new Model1();

            var res = con.EMP.ToList();

            sizeoflist = res.Count;

            for (int i = 0; i < sizeoflist; i++)
            {
                ColEMP.Add((EMP)res[i]);
            }



            mydatagird.ItemsSource = ColEMP;
        }

        private void SaveChangesButton(object sender, RoutedEventArgs e)
        {
            Regex r;
            r = new Regex("[A-Z]+");

           
                MatchCollection match1 = r.Matches(JOBBOX.Text);
            MatchCollection match2 = r.Matches(ENAMEBOX.Text);
            if (match1.Count == 0 || match2.Count == 0)
            {
                MessageBox.Show("NIEPOPRAWNE DANE \n                  :(");
            }
            else { 
               
                    try
                    {
                        var selectedEmploye = mydatagird.SelectedItem as EMP;

                        var upEmploye = new EMP
                        {
                            EMPNO = selectedEmploye.EMPNO,
                            ENAME = ENAMEBOX.Text,
                            JOB = JOBBOX.Text,
                            SAL = selectedEmploye.SAL,
                            DEPTNO = selectedEmploye.DEPTNO
                            // DEPT.DNAME = selectedEmploye.DEPT.DNAME
                        };

                        ColEMP.Remove(selectedEmploye);
                        ColEMP.Add(upEmploye);
                    Znalezieni.Remove(selectedEmploye);
                    Znalezieni.Add(upEmploye);



                    var con = new Model1();

                        con.EMP.Attach(upEmploye);
                        var entry = con.Entry<EMP>(upEmploye);
                        entry.State = EntityState.Modified;

                        con.SaveChanges();
                    }
                    catch (DbEntityValidationException exc)
                    {
                        int g = 0;
                    }



                }

             
           

        }

        private void buutonszukaj_Click(object sender, RoutedEventArgs e)
        {
            var szukane = szukajbox.Text;
            Znalezieni.Clear();
            Regex reg;
            reg = new Regex(".*" + szukane + ".*");

            // MatchCollection matches = reg.Matches(szukane);
            int ilestudentow = ColEMP.Count;

            for (int i = 0; i < ilestudentow; i++)
            {
                MatchCollection matches = reg.Matches(ColEMP[i].ENAME);
                if (matches.Count > 0)
                {
                    Znalezieni.Add(ColEMP[i]);
                }
            }


            mydatagird.ItemsSource = Znalezieni;

        }

        private void PokazWsyzstkich_Click(object sender, RoutedEventArgs e)
        {
            mydatagird.ItemsSource = ColEMP;
        }

        private void mydatagird_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var selectedEmploye = mydatagird.SelectedItem as EMP;


            JOBBOX.Text = selectedEmploye.JOB;
            ENAMEBOX.Text = selectedEmploye.ENAME;
        }
    }
}
