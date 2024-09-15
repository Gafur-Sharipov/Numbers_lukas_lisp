(defun lukas (n)
  (if (<= n 0)
      '()  
      (let ((L0 1)              
            (L1 2)              
            (i 2)              
            (result (list 1 2))) 

        (when (= n 1)
          (return (list L0)))
        (loop while (< i n)
              do (let ((L2 (+ L0 L1)))  
                   (push L2 result)     
                   (setq L0 L1)         
                   (setq L1 L2)         
                   (setq i (+ i 1))))   

        (reverse result))))



(print (lukas 15))