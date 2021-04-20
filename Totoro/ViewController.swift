//
//  ViewController.swift
//  Totoro
//
//  Created by Monica Lo on 2021/4/19.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {
   
    let player = AVPlayer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //背景色
        view.backgroundColor = UIColor(red: 16/255, green: 68/255, blue: 117/255, alpha: 1)
              
        //標題動畫
        let imageView = UIImageView(frame: CGRect(x: 45, y: 40, width: 240, height: 80))
              view.addSubview(imageView)
              let animatedImage = UIImage.animatedImageNamed("97ccbfb899e34d76d101c6a25986b040JsFtTR5fvZXTkiHv-", duration: 8)
               imageView.image = animatedImage

        //中間大主圖 漸層＋mask
        let wreathImage = UIImage(named: "wreath3.png")
        let wreathImageView = UIImageView(image: wreathImage)
        let gradientView = UIView(frame: wreathImageView.bounds)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor(red: 249/255, green: 245/255, blue: 134/255, alpha: 1).cgColor, UIColor(red: 150/255, green: 251/255, blue: 196/255, alpha: 1).cgColor]
        gradientView.layer.addSublayer(gradientLayer)
        wreathImageView.contentMode = .scaleAspectFit
        gradientView.mask = wreathImageView
        view.addSubview(gradientView)
        gradientView.transform = CGAffineTransform(translationX: -153, y: -30).scaledBy(x: 0.5, y: 0.5)
        
        //龍貓公車 漸層＋mask
        let catbusImage = UIImage(named: "catbus.png")
        let catbusImageView = UIImageView(image: catbusImage)
        let gradient2View = UIView(frame: catbusImageView.bounds)
        let gradient2Layer = CAGradientLayer()
        gradient2Layer.frame = gradient2View.bounds
        gradient2Layer.colors = [UIColor.yellow.cgColor, UIColor(red: 253/255, green: 160/255, blue: 133/255, alpha: 1).cgColor, UIColor.orange.cgColor]
        gradient2View.layer.addSublayer(gradient2Layer)
        catbusImageView.contentMode = .scaleAspectFit
        gradient2View.mask = catbusImageView
        view.addSubview(gradient2View)
        gradient2View.transform = CGAffineTransform(translationX: 145, y: 300).scaledBy(x: 0.25, y: 0.25)
        
        //龍貓臉整個圖層底
        let pathView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 200))
        pathView.backgroundColor = UIColor.clear
        view.addSubview(pathView)
        
        //路徑繪製圖
        var path = UIBezierPath()
        
        //有邊上半臉
        path = UIBezierPath()
        path.move(to: CGPoint(x: 80.2, y: 107.5))
        path.addLine(to: CGPoint(x: 88.8, y: 97.8))
        path.addLine(to: CGPoint(x: 83, y: 100.9))
        path.addLine(to: CGPoint(x: 83, y: 100.9))
        path.addLine(to: CGPoint(x: 83, y: 100.9))
        path.addLine(to: CGPoint(x: 98.7, y: 86))
        path.addLine(to: CGPoint(x: 93.2, y: 86.9))
        path.addLine(to: CGPoint(x: 112.7, y: 76.3))
        path.addLine(to: CGPoint(x: 103.2, y: 77))
        path.addLine(to: CGPoint(x: 110.7, y: 73.1))
        path.addLine(to: CGPoint(x: 101.7, y: 73.9))
        path.addLine(to: CGPoint(x: 108, y: 71))
        path.addLine(to: CGPoint(x: 98.5, y: 68.1))
        path.addLine(to: CGPoint(x: 103.4, y: 67.1))
        path.addQuadCurve(to: CGPoint(x: 100.9, y: 62.8), controlPoint: CGPoint(x: 99.4, y: 57.8))
        path.addQuadCurve(to: CGPoint(x: 98.6, y: 48.3), controlPoint: CGPoint(x: 98.7, y: 53.5))
        path.addQuadCurve(to: CGPoint(x: 98.7, y: 38.6), controlPoint: CGPoint(x: 98.5, y: 43.1))
        path.addQuadCurve(to: CGPoint(x: 100.3, y: 28.4), controlPoint: CGPoint(x: 99.4, y: 33.6))
        path.addQuadCurve(to: CGPoint(x: 102.3, y: 20), controlPoint: CGPoint(x: 101.2, y: 23.8))
        path.addQuadCurve(to: CGPoint(x: 105.2, y: 12), controlPoint: CGPoint(x: 103.6, y: 15.6))
        path.addQuadCurve(to: CGPoint(x: 110.4, y: 5), controlPoint: CGPoint(x: 107.6, y: 8))
        path.addQuadCurve(to: CGPoint(x: 116.3, y: 5.3), controlPoint: CGPoint(x: 113.3, y: 4))
        path.addQuadCurve(to: CGPoint(x: 121.3, y: 10.2), controlPoint: CGPoint(x: 118.9, y: 7.1))
        path.addQuadCurve(to: CGPoint(x: 125.6, y: 17.6), controlPoint: CGPoint(x: 123.5, y: 13.6))
        path.addQuadCurve(to: CGPoint(x: 128.6, y: 26.8), controlPoint: CGPoint(x: 127.2, y: 22.2))
        path.addQuadCurve(to: CGPoint(x: 130.1, y: 35.4), controlPoint: CGPoint(x: 129.5, y: 31.1))
        path.addQuadCurve(to: CGPoint(x: 130.8, y: 44.3), controlPoint: CGPoint(x: 130.5, y: 39.7))
        path.addQuadCurve(to: CGPoint(x: 130, y: 54.8), controlPoint: CGPoint(x: 130.9, y: 49.5))
        path.addLine(to: CGPoint(x: 134.4, y: 56.6))
        path.addLine(to: CGPoint(x: 126.9, y: 61.5))
        path.addLine(to: CGPoint(x: 135.5, y: 60.9))
        path.addLine(to: CGPoint(x: 130.2, y: 67.7))
        path.addQuadCurve(to: CGPoint(x: 136.3, y: 65.8), controlPoint: CGPoint(x: 133.2, y: 66.8))
        path.addQuadCurve(to: CGPoint(x: 143.3, y: 64), controlPoint: CGPoint(x: 139.6, y: 64.6))
        path.addQuadCurve(to: CGPoint(x: 149.9, y: 62.5), controlPoint: CGPoint(x: 146.8, y: 63.1))
        path.addQuadCurve(to: CGPoint(x: 157.6, y: 62.2), controlPoint: CGPoint(x: 153.7, y: 62.2))
        path.addQuadCurve(to: CGPoint(x: 165.2, y: 62.5), controlPoint: CGPoint(x: 161.2, y: 62.2))
        path.addQuadCurve(to: CGPoint(x: 175.3, y: 62.3), controlPoint: CGPoint(x: 170, y: 62 ))
        path.addQuadCurve(to: CGPoint(x: 183.8, y: 63.1), controlPoint: CGPoint(x: 179.8, y: 62.5))
        path.addQuadCurve(to: CGPoint(x: 191.1, y: 64.6), controlPoint: CGPoint(x: 197.5, y: 63.8))
        path.addQuadCurve(to: CGPoint(x: 196.6, y: 64.9), controlPoint: CGPoint(x: 194.1, y: 65.5))
        path.addLine(to: CGPoint(x: 201, y: 64.7))
        path.addLine(to: CGPoint(x: 192.7, y: 61.2))
        path.addLine(to: CGPoint(x: 201.1, y: 62.4))
        path.addLine(to: CGPoint(x: 193.1, y: 57.9))
        path.addLine(to: CGPoint(x: 201.5, y: 59.2))
        path.addLine(to: CGPoint(x: 195.7, y: 55.5))
        path.addQuadCurve(to: CGPoint(x: 193.6, y: 52.6), controlPoint: CGPoint(x: 194.6, y: 54))
        path.addQuadCurve(to: CGPoint(x: 193.4, y: 46.7), controlPoint: CGPoint(x: 193.2, y: 49.5))
        path.addQuadCurve(to: CGPoint(x: 194.6, y: 40.4), controlPoint: CGPoint(x: 193.9, y: 43.4))
        path.addQuadCurve(to: CGPoint(x: 194.6, y: 40.4), controlPoint: CGPoint(x: 193.9, y: 43.4))
        path.addQuadCurve(to: CGPoint(x: 196.3, y: 35.8), controlPoint: CGPoint(x: 195.4, y: 38))
        path.addQuadCurve(to: CGPoint(x: 196.3, y: 35.8), controlPoint: CGPoint(x: 195.4, y: 38))
        path.addQuadCurve(to: CGPoint(x: 198, y: 31.3), controlPoint: CGPoint(x: 197.3, y: 33.3))
        path.addQuadCurve(to: CGPoint(x: 200.2, y: 25.7), controlPoint: CGPoint(x: 198.9, y: 28.8))
        path.addQuadCurve(to: CGPoint(x: 204.5, y: 16.7), controlPoint: CGPoint(x: 202.3, y: 21))
        path.addQuadCurve(to: CGPoint(x: 208.9, y: 9.4), controlPoint: CGPoint(x: 206.5, y: 13.7))
        path.addQuadCurve(to: CGPoint(x: 213.6, y: 3.8), controlPoint: CGPoint(x: 211.3, y: 6.1))
        path.addQuadCurve(to: CGPoint(x: 216.8, y: 3), controlPoint: CGPoint(x: 215.1, y: 3))
        path.addQuadCurve(to: CGPoint(x: 219.3, y: 5.1), controlPoint: CGPoint(x: 218.1, y: 3.8))
        path.addQuadCurve(to: CGPoint(x: 221.5, y: 9.1), controlPoint: CGPoint(x: 220.5, y: 6.9))
        path.addQuadCurve(to: CGPoint(x: 223.1, y: 14.1), controlPoint: CGPoint(x: 222.3, y: 11.4))
        path.addQuadCurve(to: CGPoint(x: 224.3, y: 18.9), controlPoint: CGPoint(x: 223.7, y: 16.5))
        path.addQuadCurve(to: CGPoint(x: 225.1, y: 23.5), controlPoint: CGPoint(x: 224.7, y: 21.1))
        path.addQuadCurve(to: CGPoint(x: 225.4, y: 28.8), controlPoint: CGPoint(x: 225.4, y: 26.2))
        path.addQuadCurve(to: CGPoint(x: 225.3, y: 33.7), controlPoint: CGPoint(x: 225.4, y: 31.3))
        path.addQuadCurve(to: CGPoint(x: 224.7, y: 39.3), controlPoint: CGPoint(x: 225.1, y: 36.2))
        path.addQuadCurve(to: CGPoint(x: 223.7, y: 44.8), controlPoint: CGPoint(x: 224.3, y: 41.9))
        path.addQuadCurve(to: CGPoint(x: 222.3, y: 49.5), controlPoint: CGPoint(x: 223.1, y: 47.1))
        path.addQuadCurve(to: CGPoint(x: 220.3, y: 54), controlPoint: CGPoint(x: 221.4, y: 51.8))
        path.addQuadCurve(to: CGPoint(x: 218.3, y: 57.5), controlPoint: CGPoint(x: 219.4, y: 55.9))
        path.addQuadCurve(to: CGPoint(x: 216.1, y: 59.9), controlPoint: CGPoint(x: 217.3, y: 58.7))
        path.addQuadCurve(to: CGPoint(x: 213.9, y: 61), controlPoint: CGPoint(x: 215, y: 60.5))
        path.addLine(to: CGPoint(x: 218, y: 65.1))
        path.addLine(to: CGPoint(x: 210.8, y: 64.6))
        path.addLine(to: CGPoint(x: 219.1, y: 71.4))
        path.addLine(to: CGPoint(x: 210.2, y: 67.8))
        path.addLine(to: CGPoint(x: 216.4, y: 73.6))
        path.addLine(to: CGPoint(x: 208.5, y: 69.8))
        path.addLine(to: CGPoint(x: 214.5, y: 74.8))
        path.addLine(to: CGPoint(x: 208.7, y: 73.9))
        path.addQuadCurve(to: CGPoint(x: 213.6, y: 76.6), controlPoint: CGPoint(x: 211.6, y: 75))
        path.addLine(to: CGPoint(x: 224.6, y: 88.1))
        path.addLine(to: CGPoint(x: 219.5, y: 85.8))
        path.addQuadCurve(to: CGPoint(x: 234.8, y: 108.6), controlPoint: CGPoint(x: 228, y: 94.8))

        let earsLayer = CAShapeLayer()
        earsLayer.path = path.cgPath
        earsLayer.fillColor = UIColor(red: 146/255, green: 149/255, blue: 154/255, alpha: 1).cgColor
        earsLayer.strokeColor = UIColor.black.cgColor
        earsLayer.lineWidth = 1.5
        pathView.layer.addSublayer(earsLayer)
        
        //無邊下半臉
        path = UIBezierPath()
        path.move(to: CGPoint(x: 82.3, y: 103))
        path.addLine(to: CGPoint(x: 78.8, y: 107))
        path.addLine(to: CGPoint(x: 86.5, y: 119))
        path.addLine(to: CGPoint(x: 90, y: 123.4))
        path.addLine(to: CGPoint(x: 82.3, y: 129.8))
        path.addLine(to: CGPoint(x: 85.4, y: 132.8))
        path.addLine(to: CGPoint(x: 91.4, y: 133))
        path.addLine(to: CGPoint(x: 92.8, y: 132.1))
        path.addLine(to: CGPoint(x: 117.4, y: 130.9))
        path.addQuadCurve(to: CGPoint(x: 119.1, y: 134.3), controlPoint: CGPoint(x: 118, y: 133))
        path.addLine(to: CGPoint(x: 139.6, y: 135.6))
        path.addLine(to: CGPoint(x: 139.8, y: 138.6))
        path.addQuadCurve(to: CGPoint(x: 141.4, y: 140.9), controlPoint: CGPoint(x: 140.6, y: 140.1))
        path.addLine(to: CGPoint(x: 198.7, y: 137.8))
        path.addQuadCurve(to: CGPoint(x: 201.8, y: 132.9), controlPoint: CGPoint(x: 200.4, y: 135.3))
        path.addLine(to: CGPoint(x: 234.8, y: 129.3))
        path.addLine(to: CGPoint(x: 231.6, y: 122.8))
        path.addLine(to: CGPoint(x: 237.1, y: 118.6))
        path.addLine(to: CGPoint(x: 238.5, y: 118.5))
        path.addQuadCurve(to: CGPoint(x: 241.3, y: 116.4), controlPoint: CGPoint(x: 240.1, y: 117.4))
        path.addQuadCurve(to: CGPoint(x: 241.5, y: 113.6), controlPoint: CGPoint(x: 241.6, y: 115.1))
        path.addQuadCurve(to: CGPoint(x: 239.7, y: 111.8), controlPoint: CGPoint(x: 240.6, y: 112.5))
        path.addQuadCurve(to: CGPoint(x: 236, y: 111.5), controlPoint: CGPoint(x: 238, y: 111.3))
        path.addLine(to: CGPoint(x: 234.8, y: 108.6))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = path.cgPath
        faceLayer.fillColor = UIColor(red: 146/255, green: 149/255, blue: 154/255, alpha: 1).cgColor
        pathView.layer.addSublayer(faceLayer)
        
        //左上鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 97.6, y: 113.1))
        path.addQuadCurve(to: CGPoint(x: 77.7, y: 107.5), controlPoint: CGPoint(x: 87.9, y: 110))
        path.addQuadCurve(to: CGPoint(x: 51.9, y: 104), controlPoint: CGPoint(x: 65.4, y: 105.5))
        path.addQuadCurve(to: CGPoint(x: 47.2, y: 104.5), controlPoint: CGPoint(x: 49.9, y: 103.9))
        path.addQuadCurve(to: CGPoint(x: 50.9, y: 105), controlPoint: CGPoint(x: 49.3, y: 105.2))
        path.addQuadCurve(to: CGPoint(x: 82.1, y: 111.1), controlPoint: CGPoint(x: 68.8, y: 107.8))
        path.addQuadCurve(to: CGPoint(x: 97.3, y: 115.3), controlPoint: CGPoint(x: 90.3, y: 112.8))
        path.addQuadCurve(to: CGPoint(x: 98.6, y: 115.7), controlPoint: CGPoint(x: 97.9, y: 116))
        path.addQuadCurve(to: CGPoint(x: 99.2, y: 113.7), controlPoint: CGPoint(x: 99, y: 115.5))
        path.addQuadCurve(to: CGPoint(x: 98.5, y: 113.3), controlPoint: CGPoint(x: 98.99, y: 113.3))
        
        let beardLayer = CAShapeLayer()
        beardLayer.path = path.cgPath
        beardLayer.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer)
        
        //左中鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 96, y: 120))
        path.addLine(to: CGPoint(x: 34.3, y: 116))
        path.addLine(to: CGPoint(x: 96.1, y: 123.6))
        path.addQuadCurve(to: CGPoint(x: 97.1, y: 123.1), controlPoint: CGPoint(x: 96.7, y: 123.5))
        path.addQuadCurve(to: CGPoint(x: 97.7, y: 121.9), controlPoint: CGPoint(x: 97.5, y: 122.9))
        path.addQuadCurve(to: CGPoint(x: 97.3, y: 120.8), controlPoint: CGPoint(x: 97.6, y: 121.2))
        
        let beardLayer2 = CAShapeLayer()
        beardLayer2.path = path.cgPath
        beardLayer2.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer2)
        
        //左下鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 93, y: 128.5))
        path.addQuadCurve(to: CGPoint(x: 81.5, y: 129.6), controlPoint: CGPoint(x: 87.6, y: 128.9))
        path.addQuadCurve(to: CGPoint(x: 56.2, y: 134.2), controlPoint: CGPoint(x: 70.3, y: 130.6))
        path.addQuadCurve(to: CGPoint(x: 89.5, y: 131.6), controlPoint: CGPoint(x: 74, y: 131.6))
        path.addQuadCurve(to: CGPoint(x: 94, y: 132.1), controlPoint: CGPoint(x: 92, y: 131.9))
        path.addQuadCurve(to: CGPoint(x: 94.7, y: 130.5), controlPoint: CGPoint(x: 94.4, y: 131.7))
        path.addQuadCurve(to: CGPoint(x: 94.1, y: 128.5), controlPoint: CGPoint(x: 94.5, y: 128.9))
        
        let beardLayer3 = CAShapeLayer()
        beardLayer3.path = path.cgPath
        beardLayer3.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer3)
        
        //右上鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 226.2, y: 111.3))
        path.addLine(to: CGPoint(x: 266.8, y: 99.7))
        path.addLine(to: CGPoint(x: 225.5, y: 114.4))
        path.addQuadCurve(to: CGPoint(x: 224.3, y: 114.7), controlPoint: CGPoint(x: 224.7, y: 115))
        path.addQuadCurve(to: CGPoint(x: 223.7, y: 114), controlPoint: CGPoint(x: 224, y: 114.8))
        path.addQuadCurve(to: CGPoint(x: 224.7, y: 111.8), controlPoint: CGPoint(x: 223.7, y: 112.3))
        
        let beardLayer4 = CAShapeLayer()
        beardLayer4.path = path.cgPath
        beardLayer4.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer4)
        
        //右中鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 228.7, y: 119.7))
        path.addLine(to: CGPoint(x: 285.1, y: 118.8))
        path.addLine(to: CGPoint(x: 229.2, y: 123.6))
        path.addQuadCurve(to: CGPoint(x: 227.7, y: 123.5), controlPoint: CGPoint(x: 228.5, y: 123.9))
        path.addQuadCurve(to: CGPoint(x: 227.2, y: 122.1), controlPoint: CGPoint(x: 227.4, y: 123.2))
        path.addQuadCurve(to: CGPoint(x: 227.7, y: 120.1), controlPoint: CGPoint(x: 227.3, y: 119.8))
        
        let beardLayer5 = CAShapeLayer()
        beardLayer5.path = path.cgPath
        beardLayer5.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer5)
        
        //右下鬍鬚
        path = UIBezierPath()
        path.move(to: CGPoint(x: 232.8, y: 127))
        path.addQuadCurve(to: CGPoint(x:283.7, y: 136), controlPoint: CGPoint(x: 272.2, y: 130.2))
        path.addQuadCurve(to:CGPoint(x:233.8, y: 129.7), controlPoint: CGPoint(x: 260.2, y: 130.3))
        path.addQuadCurve(to:CGPoint(x:232.2, y: 130.8), controlPoint: CGPoint(x: 233.1, y: 129.3))
        path.addQuadCurve(to:CGPoint(x:232.2, y: 129.4), controlPoint: CGPoint(x: 233.1, y: 129.3))
        path.addQuadCurve(to:CGPoint(x:231.8, y: 127.3), controlPoint: CGPoint(x: 231.2, y: 125.9))
        
        let beardLayer6 = CAShapeLayer()
        beardLayer6.path = path.cgPath
        beardLayer6.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(beardLayer6)
        
        //鼻上毛紋
        path = UIBezierPath()
        path.move(to: CGPoint(x: 146.3, y: 105.6))
        path.addQuadCurve(to: CGPoint(x:159.2, y: 99.5), controlPoint: CGPoint(x: 153.6, y: 100.4))
        path.addLine(to: CGPoint(x: 159.2, y: 100.5))
        path.addLine(to: CGPoint(x: 155.7, y: 102.4))
        path.addLine(to: CGPoint(x: 167.6, y: 100))
        path.addLine(to: CGPoint(x: 165, y: 101.8))
        path.addLine(to: CGPoint(x: 177, y: 100.9))
        path.addLine(to: CGPoint(x: 173.1, y: 103))
        path.addLine(to: CGPoint(x: 181.4, y: 105.8))
        path.addLine(to: CGPoint(x: 170.6, y: 104.7))
        path.addLine(to: CGPoint(x: 170.4, y: 103.1))
        path.addLine(to: CGPoint(x: 160.5, y: 104.2))
        path.addLine(to: CGPoint(x: 160.2, y: 102.8))
        path.addLine(to: CGPoint(x: 152.5, y: 105.1))
        path.addLine(to: CGPoint(x: 152.2, y: 103.8))
        
        let middleLayer = CAShapeLayer()
        middleLayer.path = path.cgPath
        middleLayer.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(middleLayer)
        
        //鼻子
        path = UIBezierPath()
        path.move(to: CGPoint(x: 153.6, y: 112.4))
        path.addLine(to: CGPoint(x: 152.4, y: 110.6))
        path.addQuadCurve(to: CGPoint(x:158.6, y: 107.7), controlPoint: CGPoint(x: 155.3, y: 108.7))
        path.addQuadCurve(to: CGPoint(x:158.6, y: 107.7), controlPoint: CGPoint(x: 155.3, y: 108.7))
        path.addQuadCurve(to: CGPoint(x:164.2, y: 107.3), controlPoint: CGPoint(x: 161.3, y: 107.2))
        path.addQuadCurve(to: CGPoint(x:170, y: 109.2), controlPoint: CGPoint(x: 167.2, y: 107.9))
        path.addQuadCurve(to: CGPoint(x:173.2, y: 110.8), controlPoint: CGPoint(x: 171.6, y: 109.9))
        path.addLine(to: CGPoint(x: 173.2, y: 112.4))
        path.addQuadCurve(to: CGPoint(x:169, y: 113.2), controlPoint: CGPoint(x: 171, y: 112.6))
        path.addQuadCurve(to: CGPoint(x:164.9, y: 114.6), controlPoint: CGPoint(x: 166.8, y: 113.8))
        path.addQuadCurve(to: CGPoint(x:163.8, y: 115.8), controlPoint: CGPoint(x: 164.3, y: 115.1))
        path.addLine(to: CGPoint(x: 161.5, y: 115.8))
        path.addQuadCurve(to: CGPoint(x:158.3, y: 113.6), controlPoint: CGPoint(x: 160, y: 114.6))
        path.addQuadCurve(to: CGPoint(x:155.3, y: 112.4), controlPoint: CGPoint(x: 156.7, y: 112.5))
        
        let noseLayer = CAShapeLayer()
        noseLayer.path = path.cgPath
        noseLayer.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(noseLayer)
        
        //左眼白
        path = UIBezierPath(ovalIn: CGRect(x: 104, y: 92.7, width: 26.5, height: 25))
        
        let eyesLayer = CAShapeLayer()
        eyesLayer.path = path.cgPath
        eyesLayer.fillColor = UIColor.white.cgColor
        pathView.layer.addSublayer(eyesLayer)
        
        //右眼白(位移)
        let eyesLayer2 = CAShapeLayer()
        eyesLayer2.path = path.cgPath
        eyesLayer2.setAffineTransform(CGAffineTransform(translationX: 89.4, y: 0))
        eyesLayer2.fillColor = UIColor.white.cgColor
        pathView.layer.addSublayer(eyesLayer2)
        
        //左眼球
        path = UIBezierPath(ovalIn: CGRect(x: 116.8, y: 94, width: 10.3, height: 10.5))
        
        let eyeballLayer = CAShapeLayer()
        eyeballLayer.path = path.cgPath
        eyeballLayer.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(eyeballLayer)
        
        //右眼球(位移)
        let eyeballLayer2 = CAShapeLayer()
        eyeballLayer2.path = path.cgPath
        eyeballLayer2.setAffineTransform(CGAffineTransform(translationX: 79, y: 1.8))
        eyeballLayer2.fillColor = UIColor.black.cgColor
        pathView.layer.addSublayer(eyeballLayer2)
        
        //左上眼眶
        path = UIBezierPath()
        path.move(to: CGPoint(x: 104.2, y: 104.4))
        path.addQuadCurve(to: CGPoint(x:107, y: 98.3), controlPoint: CGPoint(x: 105.2, y: 101))
        path.addQuadCurve(to: CGPoint(x:110.6, y: 95.1), controlPoint: CGPoint(x: 108.6, y: 96.5))
        path.addQuadCurve(to: CGPoint(x:115.2, y: 93.6), controlPoint: CGPoint(x: 112.8, y: 94))
        path.addQuadCurve(to: CGPoint(x:120, y: 93.6), controlPoint: CGPoint(x: 117.6, y: 93.2))
        path.addQuadCurve(to: CGPoint(x:124.8, y: 95.7), controlPoint: CGPoint(x: 122.5, y: 94.4))
        path.addQuadCurve(to: CGPoint(x:128.2, y: 100.1), controlPoint: CGPoint(x: 126.8, y: 97.7))
        path.addQuadCurve(to: CGPoint(x:129.9, y: 104.4), controlPoint: CGPoint(x: 129.4, y: 102.2))
        
        let eyeupLayer = CAShapeLayer()
        eyeupLayer.path = path.cgPath
        eyeupLayer.fillColor = UIColor.clear.cgColor
        eyeupLayer.strokeColor = UIColor.black.cgColor
        eyeupLayer.lineWidth = 1.5
        pathView.layer.addSublayer(eyeupLayer)
        
        //右上眼眶(位移)
        let eyeupLayer2 = CAShapeLayer()
        eyeupLayer2.path = path.cgPath
        eyeupLayer2.setAffineTransform(CGAffineTransform(translationX: 89.7, y: 0))
        eyeupLayer2.fillColor = UIColor.clear.cgColor
        eyeupLayer2.strokeColor = UIColor.black.cgColor
        eyeupLayer2.lineWidth = 1.5
        pathView.layer.addSublayer(eyeupLayer2)
        
        //左下眼眶
        path = UIBezierPath()
        path.move(to: CGPoint(x: 103.5, y: 108.3))
        path.addQuadCurve(to: CGPoint(x:105.4, y: 112.6), controlPoint: CGPoint(x: 104.3, y: 110.5))
        path.addQuadCurve(to: CGPoint(x:108.5, y: 115.8), controlPoint: CGPoint(x: 106.7, y: 114.4))
        path.addQuadCurve(to: CGPoint(x:112.3, y: 117.3), controlPoint: CGPoint(x: 110.3, y: 116.6))
        path.addQuadCurve(to: CGPoint(x:116.4, y: 117.7), controlPoint: CGPoint(x: 114.4, y: 117.7))
        path.addQuadCurve(to: CGPoint(x:124.6, y: 115.4), controlPoint: CGPoint(x: 122.6, y: 116.4))
        path.addQuadCurve(to: CGPoint(x:127.7, y: 111.8), controlPoint: CGPoint(x: 126.3, y: 113.6))
        path.addQuadCurve(to: CGPoint(x:129.3, y: 107.5), controlPoint: CGPoint(x: 128.7, y: 109.5))
        
        let eyedownLayer = CAShapeLayer()
        eyedownLayer.path = path.cgPath
        eyedownLayer.fillColor = UIColor.clear.cgColor
        eyedownLayer.strokeColor = UIColor.black.cgColor
        eyedownLayer.lineWidth = 1.5
        pathView.layer.addSublayer(eyedownLayer)
        
        //右下眼眶(位移)
        let eyedownLayer2 = CAShapeLayer()
        eyedownLayer2.path = path.cgPath
        eyedownLayer2.setAffineTransform(CGAffineTransform(translationX: 89.8, y: 0))
        eyedownLayer2.fillColor = UIColor.clear.cgColor
        eyedownLayer2.strokeColor = UIColor.black.cgColor
        eyedownLayer2.lineWidth = 1.5
        pathView.layer.addSublayer(eyedownLayer2)
       
        //龍貓整個圖移至最下
        pathView.transform = CGAffineTransform(translationX: 0, y: 418)
               
        
        //龍貓有邊上半臉繪製線條動畫
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 5
        animation.repeatCount = .greatestFiniteMagnitude
        earsLayer.add(animation, forKey: nil)
    
        //小黑炭spark動畫
        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 0)
        skView.backgroundColor = .clear
        let scene = SKScene(size: skView.frame.size)
        scene.backgroundColor = UIColor.clear
        scene.anchorPoint = CGPoint(x: 0.4, y: 0.5)
        let emitterNode = SKEmitterNode(fileNamed: "MySparkParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
        
        //音樂
        let fileUrl = Bundle.main.url(forResource: "totoro", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: fileUrl)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }

}



