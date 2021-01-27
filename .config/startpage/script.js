let date = new Date()

let winterTime = 1;

function greeter(hour, user) {
    console.log(hour)
    if(4 < hour && hour <= 10){
        return `Good morning, ${user}`
    } else if ( 10 < hour && hour <= 14){
        return `Hello, ${user}`
    } else if (14 < hour && hour <= 17){
        return `Good afternoon, ${user}`
    }else if (17 < hour && hour <= 22){
        return `Good evening, ${user}`
    }else{
        return `Good night, ${user}`
    }
}

let clock = () => {

  let date = new Date();
  let hrs = date.getHours();
  let mins = date.getMinutes();

  if (winterTime){
    hrs = hrs+1;
  }
hrs = hrs < 10 ? "0" + hrs : hrs;
  mins = mins < 10 ? "0" + mins : mins;
  let time = `${hrs}:${mins}`;
  setTimeout(clock, 500);
  document.getElementById("clock").innerText = time;
  document.getElementById("greeter").innerText = greeter(hrs, "$USER");
};

clock();

