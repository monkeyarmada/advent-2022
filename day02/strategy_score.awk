# A = X = Rock
# B = Y = Paper
# C = Z = Scisors


BEGIN {
    sum=0;
}
{ 
    p2Answer=selectP2Answer($1, $2);
    sum+=generateScore($1, p2Answer);
}
END {
    print sum;
}

function generateScore(p1, p2) {
    win_score=6;
    lose_score=0;
    draw_score=3;
    X_score=1;
    Y_score=2;
    Z_score=3;
    if(p1=="A") {
        if(p2=="X") return draw_score+X_score;
        if(p2=="Y") return win_score+Y_score;
        if(p2=="Z") return lose_score+Z_score;
    }
    if(p1=="B") {
        if(p2=="X") return lose_score+X_score;
        if(p2=="Y") return draw_score+Y_score;
        if(p2=="Z") return win_score+Z_score;
    }
    if(p1=="C") {
        if(p2=="X") return win_score+X_score;
        if(p2=="Y") return lose_score+Y_score;
        if(p2=="Z") return draw_score+Z_score;
    }
}
function selectP2Answer(p1, p2) {
    if(p2=="X") return findLose(p1);
    if(p2=="Y") return findDraw(p1);
    if(p2=="Z") return findWin(p1);
}
function findWin(val) {
    if(val=="A") return "Y";
    if(val=="B") return "Z";
    if(val=="C") return "X";
}
function findLose(val) {
    if(val=="A") return "Z";
    if(val=="B") return "X";
    if(val=="C") return "Y";
}
function findDraw(val) {
    if(val=="A") return "X";
    if(val=="B") return "Y";
    if(val=="C") return "Z";
}