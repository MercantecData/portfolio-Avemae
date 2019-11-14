using System;
using System.Collections.Generic;
using System.Text;

namespace ObjProg_Dag1_JagtPåObjekter
{
    class Sign
    {
        public int amountOfLegs;
        public string message;
        public string material;
        public string color;
        public bool isFoldable;

        public string Hat()
        {
            return $"This is the best hat! Is it foldable though? {isFoldable}";
        }

        public string BeSweet()
        {
            return $"Are you sweet enough? If not, read this message: {message}";
        }

        public string CantGoOutside()
        {
            return $"I hate this sign and all of it's {amountOfLegs}! I can't go outside because it is in my way!";
        }

        public string SnoopDogg()
        {
            return $"Snoop-Dogg has made a new song based on this sign! It's called {color}.";
        }

        public string Control()
        {
            return $"This... This {material} sign scares me! It feels like it controls my life!";
        }
    }
}
