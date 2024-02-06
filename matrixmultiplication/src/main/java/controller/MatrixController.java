package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MatrixController {
	@GetMapping("/")
    public String index() {
        return "index";
    }
	
	@RequestMapping("/error")
	public String error() {
		return "error";
	}

    @PostMapping("/multiply")
    @ResponseBody
    public ModelAndView multiplyMatrices(@RequestParam("matrixA") String matrixA,
                                         @RequestParam("matrixB") String matrixB) {
    	
    	int m1[][]=parseMatrix(matrixA);
    	int m2[][]=parseMatrix(matrixB);
    	if (m1[0].length != m2.length) {
            // Redirect to an error page if the condition is not met
            return new ModelAndView("redirect:/error");
        }
    	
        int[][] result = multiply(m1,m2 );
        ModelAndView modelAndView = new ModelAndView("result");
        
        modelAndView.addObject("result", result);
        return modelAndView;
    }

    private int[][] parseMatrix(String matrixString) {
        String[] rows = matrixString.trim().split("\n");
        int[][] matrix = new int[rows.length][];
        for (int i = 0; i < rows.length; i++) {
            String[] elements = rows[i].trim().split("\\s+");
            matrix[i] = new int[elements.length];
            for (int j = 0; j < elements.length; j++) {
                matrix[i][j] = Integer.parseInt(elements[j]);
            }
        }
        return matrix;
    }

    private int[][] multiply(int[][] matrixA, int[][] matrixB) {
        int rowsA = matrixA.length;
        int colsA = matrixA[0].length;
        int rowsB=matrixB.length;
        int colsB = matrixB[0].length;
        
        

        int[][] result = new int[rowsA][colsB];

        for (int i = 0; i < rowsA; i++) {
            for (int j = 0; j < colsB; j++) {
                for (int k = 0; k < colsA; k++) {
                    result[i][j] += matrixA[i][k] * matrixB[k][j];
                }
            }
        }

        return result;
    }
}
