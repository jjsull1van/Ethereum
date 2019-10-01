pragma solidity <=0.5.1;
contract StudentContract {
    
    uint256 public studentCounter = 0;
    
    mapping(uint => Student) public students;
    
    constructor() public {
        addStudent("Michael", "Sims");
    }
    
    struct  Student{
        uint _id1;
        string _fname;
        string _lname;
        
    }
    
    event studentListed(uint256 id,
                string fname1,
                string lname1);
    
    function addStudent(string memory _fname, string memory _lname) public {
        studentCounter++;
        students[studentCounter] = Student(studentCounter, _fname, _lname);
    }
    
    function studentList()  public  {
        string memory frame0;
        string memory lname0;
        uint256 sid;
        uint256 sCnt = studentCounter + 1;
        
        for (uint256 i=1; i<sCnt; i++){
            
             sid = students[i]._id1;
            frame0 = students[i]._fname;
            lname0 = students[i]._lname;
            
            emit studentListed(sid,frame0,lname0);
           
        }    
    
    }
    
}