using System;

namespace ObjProg_Dag1_JagtPåObjekter
{
    class Program
    {
        static void Main(string[] args)
        {
            Sofa SchoolSofa = new Sofa();

            SchoolSofa.hasLegs = true;
            SchoolSofa.hasSeatBack = true;
            SchoolSofa.isAPartOfASet = true;
            SchoolSofa.material = "leather";
            SchoolSofa.color = "purple";

            Console.WriteLine(SchoolSofa.Sitting());
      
        }
    }
}
