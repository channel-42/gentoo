let date = new Date()


let clock = () => {
  let date = new Date();
  let hrs = date.getHours();
  let mins = date.getMinutes();
  if (hrs == 0) {
    hrs = 12;
  }

  hrs = hrs < 10 ? "0" + hrs : hrs;
  mins = mins < 10 ? "0" + mins : mins;

  let time = `${hrs}:${mins}`;
  setTimeout(clock, 100);
  document.getElementById("clock").innerText = time;
};

clock();

