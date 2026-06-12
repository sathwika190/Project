module elevator_fsm(
    input clk,
    input reset,
    input [1:0] request_floor,
    output reg [1:0] current_floor
);

parameter FLOOR0 = 2'b00;
parameter FLOOR1 = 2'b01;
parameter FLOOR2 = 2'b10;
parameter FLOOR3 = 2'b11;

reg [1:0] next_floor;

// State update
always @(posedge clk or posedge reset) begin
    if(reset)
        current_floor <= FLOOR0;
    else
        current_floor <= next_floor;
end

// Next state logic
always @(*) begin
    case(current_floor)

        FLOOR0:
            if(request_floor > FLOOR0)
                next_floor = FLOOR1;
            else
                next_floor = FLOOR0;

        FLOOR1:
            if(request_floor > FLOOR1)
                next_floor = FLOOR2;
            else if(request_floor < FLOOR1)
                next_floor = FLOOR0;
            else
                next_floor = FLOOR1;

        FLOOR2:
            if(request_floor > FLOOR2)
                next_floor = FLOOR3;
            else if(request_floor < FLOOR2)
                next_floor = FLOOR1;
            else
                next_floor = FLOOR2;

        FLOOR3:
            if(request_floor < FLOOR3)
                next_floor = FLOOR2;
            else
                next_floor = FLOOR3;

        default:
            next_floor = FLOOR0;

    endcase
end

endmodule