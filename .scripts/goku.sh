#
#            ___     -._
#            `-. """--._ `-.
#               `.      "-. `.
# _____           `.       `. \       
#`-.   """---.._    \        `.\
#   `-.         "-.  \         `\
#      `.          `-.\          \_.-""""""""--._
#        `.           `                          "-.
#          `.                                       `.    __....-------...
#--..._      \                                       `--"""""""""""---..._
#__...._"_-.. \                       _,                             _..-""
#`-.      """--`           /       ,-'/|     ,                   _.-"
#   `-.                 , /|     ,'  / |   ,'|    ,|        _..-"
#      `.              /|| |    /   / |  ,'  |  ,' /        ----"""""""""_`-
#        `.            ( \  \      |  | /   | ,'  //                 _.-"
#          `.        .'-\/'""\ |  '  | /  .-/'"`\' //            _.-"
#    /'`.____`-.  ,'"\  ''''?-.V`.   |/ .'..-P''''  /"`.     _.-"
#   '(   `.-._""  ||(?|    /'   >.\  ' /.<   `\    |P)||_..-"___.....---
#     `.   `. "-._ \ ('   |     `8      8'     |   `) /"""""    _".""
#       `.   `.   `.`.b|   `.__            __.'   |d.'  __...--""
#         `.   `.   ".`-  .---      ,-.     ---.  -'.-""
#           `.   `.   ""|      -._      _.-      |""
#             `.  .-"`.  `.       `""""'       ,'
#               `/     `.. ""--..__    __..--""
#                `.      /7.--|    """"    |--.__
#                  ..--"| (  /'            `\  ` ""--..
#               .-"      \\  |""--.    .--""|          "-.
#              <.         \\  `.    -.    ,'       ,'     >
#             (P'`.        `%,  `.      ,'        /,' .-"'?)
#             P    `. \      `%,  `.  ,'         /' .'     \
#            | --"  _\||       `%,  `'          /.-'   .    )
#            |       `-.""--..   `%..--"""\\"--.'       "-  |
#            \          `.  .--"""  "\.\.\ \\.'       )     |
#

# Find a project in various directories. Change them to whatever suits you
function fp() {
 echo `find $HOME/src $HOME/Apraise $HOME/Projects/Liege $HOME/src/disaster-recovery $HOME/Projects/Cogent $HOME/Projects/Oomph $HOME/Projects/Pelofy $HOME/Projects/Personal $HOME/Projects/open_source -maxdepth 1 | grep /\[\^/\]\*$1\
\[\^/\]\*$ | head -n 1`
}

# Go to a particular project
function go () {
 local PROJECT=`fp $1`

 if [ -n "$PROJECT" ]
 then
   cd "$PROJECT"
 else
   echo "There is no project like:" $1
 fi
}

