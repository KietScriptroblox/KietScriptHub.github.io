<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Kiet Script Key Generator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      color: #333;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }
    .container {
      text-align: center;
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 300px;
    }
    .text-label {
      font-size: 30px;
      margin-bottom: 15px;
    }
    .button {
      font-size: 20px;
      padding: 10px 20px;
      margin: 10px;
      cursor: pointer;
      border: none;
      border-radius: 5px;
      background-color: #4CAF50;
      color: white;
    }
    .button:disabled {
      background-color: #888;
    }
    .buy-button {
      background-color: #f44336;
    }
    .count {
      font-size: 24px;
      margin-top: 20px;
    }
    .key-box {
      margin-top: 10px;
      display: none;
    }
    .text-box {
      padding: 10px;
      font-size: 20px;
      margin-top: 10px;
      width: 100%;
    }
    .copy-button {
      margin-top: 10px;
      font-size: 18px;
      padding: 8px;
      background-color: #2196F3;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>

  <div class="container">
    <div class="text-label">Kiet Script Key</div>
    
    <!-- Khung Get Key -->
    <div class="text-label">Get Key Free</div>
    <button class="button" id="getKeyBtn">Get Key</button>
    
    <!-- Khung nhập key và nút copy -->
    <div class="key-box" id="keyBox">
      <input type="text" id="keyInput" class="text-box" readonly />
      <button class="copy-button" id="copyBtn">Copy</button>
    </div>
    
    <!-- Nút Buy Key -->
    <button class="button buy-button" id="buyBtn">Buy Key</button>
    
    <!-- Số lượng người đã lấy key -->
    <div class="count">
      <div>Number of players who have taken the key:</div>
      <span id="keyCount">0</span>
    </div>
  </div>

  <script>
    let keyCount = 0;
    let countdown;

    document.getElementById('getKeyBtn').addEventListener('click', function() {
      let timer = 10;
      this.disabled = true;
      const countdownLabel = document.createElement('span');
      countdownLabel.id = 'countdown';
      countdownLabel.innerHTML = `Countdown: ${timer}s`;
      this.parentNode.appendChild(countdownLabel);

      countdown = setInterval(function() {
        timer--;
        countdownLabel.innerHTML = `Countdown: ${timer}s`;
        if (timer <= 0) {
          clearInterval(countdown);
          countdownLabel.remove();
          document.getElementById('keyBox').style.display = 'block';
          const key = Math.random().toString(36).substring(2, 15); // Tạo key ngẫu nhiên
          document.getElementById('keyInput').value = key;
        }
      }, 1000);
    });

    document.getElementById('copyBtn').addEventListener('click', function() {
      const keyInput = document.getElementById('keyInput');
      keyInput.select();
      document.execCommand('copy');
      alert('Key copied to clipboard!');
    });

    document.getElementById('buyBtn').addEventListener('click', function() {
      alert('Under Maintenance! Please Come Back Later');
    });

    document.getElementById('getKeyBtn').addEventListener('click', function() {
      keyCount++;
      document.getElementById('keyCount').innerText = keyCount;
    });
  </script>

</body>
</html>
