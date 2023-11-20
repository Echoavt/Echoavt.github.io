<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Janoušek Escape</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
  <style>
    * {
  box-sizing: border-box;
}

body {
  margin: 0;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-image: url('https://github.com/Echoavt/Echoavt.github.io/blob/main/SOC_obr1.jpg?raw=true');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  font-family: 'Roboto', sans-serif;
  overflow: hidden;
  position: relative;
}

.button-container {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
}

.button {
  display: inline-flex;
  align-items: center;
  font-size: 18px;
  text-align: center;
  padding: 15px 30px;
  color: white;
  background-image: linear-gradient(135deg, red, darkred);
  border: 3px solid white;
  border-radius: 10px;
  text-decoration: none;
  transition: 0.3s;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
}

.button:hover {
  box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.4);
}

.button-blue {
  background-image: linear-gradient(135deg, blue, darkblue);
}

.button-blue:hover {
  background-image: linear-gradient(135deg, darkblue, blue);
  border-color: darkblue;
}

.button-green {
  background-image: linear-gradient(135deg, green, darkgreen);
}

.button-green:hover {
  background-image: linear-gradient(135deg, darkgreen, green);
  border-color: darkgreen;
}

.header {
  font-size: 48px;
  color: white;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  margin-bottom: 30px;
  animation: fadeInDown 1s ease;
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    transform: translateY(-20px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

.button {
  display: inline-flex;
  align-items: center;
  font-size: 24px;
  text-align: center;
  padding: 20px 40px;
  color: white;
  background-color: red;
  border: 3px solid white;
  border-radius: 10px;
  text-decoration: none;
  transition: 0.3s;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
  animation: fadeInUp 1s ease 0.5s;
  animation-fill-mode: backwards;
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    transform: translateY(20px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

.button:hover {
  background-color: darkred;
  border-color: darkred;
  box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.4);
}

.button i {
  margin-right: 8px;
}

.confetti-container {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
      z-index: 100;
    }

    .confetti {
      position: absolute;
      width: 15px;
      height: 15px;
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 50%;
      opacity: 0;
      animation: confetti-fall 4s linear infinite;
    }

    @keyframes confetti-fall {
      0% {
        opacity: 1;
        transform: translateY(-100%);
      }
      100% {
        opacity: 1;
        transform: translateY(100%);
      }
    }
  100% {
    opacity: 1;
    transform: translateY(100%);
  }
}

.confetti:nth-child(odd) {
  background-color: rgba(0, 255, 255, 0.8);
}

.confetti:nth-child(even) {
  background-color: rgba(255, 0, 255, 0.8);
}

.confetti:nth-child(3n) {
  background-color: rgba(255, 255, 0, 0.8);
}

.confetti:nth-child(4n) {
  background-color: rgba(0, 255, 0, 0.8);
}

  </style>
</head>
<body>
  <div class="confetti-container"></div>
  <div class="button-container">
    <a href="http://wiki.sps-pi.cz/index.php/SOC" class="button">SOČ</a>
    <a href="janousek_escape.html" class="button button-blue">Janoušek Escape</a>
    <button class="button button-green">Arduino Yippie</button>
  </div>

  <div id="particles-js" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1;"></div>

  <script>
    document.querySelector('.button-green').addEventListener('click', () => {
      launchConfetti();
    });

    function launchConfetti() {
      const confettiCount = 100;
      const container = document.querySelector('.confetti-container');
      container.innerHTML = '';

      for (let i = 0; i < confettiCount; i++) {
        const confetti = document.createElement('div');
        confetti.className = 'confetti';
        confetti.style.left = Math.random() * 100 + '%';
        confetti.style.animationDuration = (Math.random() * 2 + 2) + 's';
        container.appendChild(confetti);
      }
    }
  </script>
</body>
</html>
