
const img = document.querySelector("#img");
const playPause = document.querySelector("#playpause");
const playPauseBtn = document.querySelector("#playpause-btn");
const audio = document.querySelector("#audio");
const title = document.querySelector("#title");
const type = document.querySelector("#typeof");
const titlelogo = document.querySelector("#titlelogo");
const prevBtn = document.querySelector("#prevbtn");
const nextBtn = document.querySelector("#nextbtn");
const progress = document.querySelector("#progress");
const progressBar = document.querySelector(".progress-bar");
const volume = document.querySelector("#volume");
const layer = document.querySelector(".layer");
const volBar = document.querySelector(".bar");
const progressLine = document.querySelector(".progress-line");
const volumeRange = document.querySelector(".volumerange");
const repeatBtn = document.querySelector("#repeat");
const likeBtn = document.querySelector("#like");
const likeIcon = document.querySelector("#likeicon");
const songListBtn = document.querySelector("#list");
const songList = document.querySelector("#songs-list");
const listCloseBtn = document.querySelector("#listclose");
const musicv = document.getElementById('musicv');
// songs array

const songs = [
    {
        path: 'http://mp3.ananmanan.lk/mp3/202102/Jayasri-Tharaka-Seetha-Pathirei-Lo-Thale.mp3',
        displayName: 'Seetha Pathiree',
        type: 'assets/img/small-logos/logo-spotify.svg',
        artist: 'Jayasri Tharaka',
        cover: "https://www.teahub.io/photos/full/251-2512846_all-time-low-jon-bellion-album-art.jpg",
      },
      {
        path: 'https://us10a.serverse.com/proxy/ananmanan?mp=/stream',
        displayName: 'Ananmanan Radio',
        type: 'assets/img/livestraem.png',
        artist: 'Radio',
        cover: "http://www.ananmanan.lk/assets/img/logo.png",
      },
      {
        path: 'https://s9.voscast.com:9393/live',
        displayName: 'SiyatahaFm',
        type: 'assets/img/livestraem.png',
        artist: 'Radio',
        cover: "https://yt3.ggpht.com/ytc/AMLnZu8zNMKgkgpkvVVHMXNzyW6oPyBavhK9FjMaY1fQYQ=s900-c-k-c0x00ffffff-no-rj",
      },
      {
        path: 'http://209.133.216.3:7018/;stream.mp3',
        displayName: 'HiruFm',
        type: 'assets/img/livestraem.png',
        artist: 'Radio',
        cover: "https://www.hirufm.lk/images/logo_large.jpg",
      },
      {
        path: 'https://cp12.serverse.com/proxy/fmderana/stream',
        displayName: 'DeranaFm',
          artist: 'Radio',
        type: 'assets/img/livestraem.png',
        cover: "http://www.fmderana.lk/images/branding/fm-derana-logo.svg",
      },
      {
        path: 'http://209.133.216.3:7071/;stream.mp3',
        displayName: 'Suriyan',
          artist: 'Radio',
          type: 'assets/img/livestraem.png',
        cover: "https://yt3.ggpht.com/ytc/AMLnZu_bcRN_Rg9e39AItE5oL1AR-BjrQDb6V_oATOZPaA=s900-c-k-c0x00ffffff-no-rj",
      },
      {
        path: 'https://live.tnlrn.com/radio/8020/live.mp3',
        displayName: 'LightFm',
          artist: 'Radio',
        type: 'assets/img/livestraem.png',
        cover: "https://www.lite87.com/wp-content/uploads/elementor/thumbs/Lite87_logo-ppl71m8hncvlh9f9db7erretvcsisvdibfl97w0rko.png",
    },
    {
        path: 'https://stream.streema.com/?url=http://220.247.227.6:8000/Tnsstream',
        displayName: 'TamilFm(102.1)',
          artist: 'Radio',
        type: 'assets/img/livestraem.png',
        cover: "https://static-media.streema.com/media/cache/a5/24/a524d6b582a2418ad2e82f09cdd3e3e9.jpg",
      },
];

// deafult song index 

let songIndex = 2;

// song default state

let isPlaying = false;

// song pause function

function playSong(){
  isPlaying = true;
  playPauseBtn.classList.replace("ni-button-play","ni-button-pause");
  audio.play();
}

// song play function

function pauseSong(){
  isPlaying = false;
  playPauseBtn.classList.replace("ni-button-pause","ni-button-play");
  audio.pause();
}

// loading songs

function loadSong(song){
    img.src = song.cover;
    title.textContent = song.displayName;
    audio.src = song.path;
    type.textContent = song.artist
    titlelogo.src = song.type
};

// previous song 

function prevSong(){
  songIndex--;
  if(songIndex < 0){
    songIndex = songs.length - 1;
  }
  loadSong(songs[songIndex]);
  playSong();
}

// next song

function nextSong(){
  songIndex++;
  if(songIndex > songs.length-1){
    songIndex = 0;
  }
  loadSong(songs[songIndex]);
  playSong();
}

// progress bar function
console.log(audio.duration);

function updateProgress(e){
    if (isPlaying) {
    const { duration, currentTime } = e.target;
    // Update progress bar width
    const progressPercent = (currentTime / duration) * 100;
    progress.value = progressPercent;
    if(progressPercent==100){
      return nextSong();
    }
  }
}

function progressSlide(e){
  const { value } = e.target;
  const progressTime = Math.ceil((audio.duration / 100) * value);
  audio.currentTime = progressTime;
  console.log(progressTime);
    if(!isPlaying) {
      progressLine.style.width = `${value}%`;    
   }
}


function setVolume(){
    audio.volume = volumeRange.value;
  console.log("dssa" + audio.volume);
  musicv.innerHTML = Math.floor(audio.volume * 100)+"/100";
}

function repeat() {
  repeatBtn.style.color = "red";
  const repeatBtnState = repeatBtn.style.color;
  if(repeatBtnState =="red"){
    audio.loop = true;
    loadSong();
  }else{
    audio.loop = false;
    loadSong();
  }
  
}

function like() {
    // likeIcon
  if (likeIcon.style.color=="#67748E") {
      likeIcon.style.color == "red";
  } else {
      likeIcon.style.color == "#67748E";
  }
}

function musicList(){
  songList.classList.toggle("showlist");
  listCloseBtn.addEventListener("click",()=>{
    songList.classList.remove("showlist");
  })
}

//battery percentage indicator
 
const BattryLevel = document.querySelector("#battry");  
navigator.getBattery().then(function (battery) {  
 const level = battery.level;  
 const status = level * 100 + "%";  
 BattryLevel.innerHTML = status;  
});  


playPause.addEventListener("click", () => (isPlaying ? pauseSong() : playSong())); 
prevBtn.addEventListener("click",prevSong);
nextBtn.addEventListener("click",nextSong);
audio.addEventListener("timeupdate", updateProgress);
progress.addEventListener("input", progressSlide);
// volume.addEventListener("click", volumeBar);
volumeRange.addEventListener("input",setVolume);
repeatBtn.addEventListener("click", repeat);
likeIcon.addEventListener("click", like);
songListBtn.addEventListener("click",musicList);