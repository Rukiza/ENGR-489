( module
    ( func $f ( param $0 i32 ) ( result i32 )
        ( local $2 i32 )
        ( local $3 i32 )
        ( local $pc i32 )
        ( set_local $pc ( i32.const 0 ) )
        ( loop $START 
            ( block 
                ( if ( i32.eq ( get_local $pc ) ( i32.const 0 ) )
                    ( then
                        ( set_local $2 ( i32.const 0 ) )
                        ( if ( i32.le_s ( get_local $0 ) ( get_local $2 ) )
                            ( then
                                ( set_local $pc ( i32.const 1 ) )
                                ( br $START ) )
                        )
                        ( return ( get_local $0 ) )
                        ( set_local $pc ( i32.add ( get_local $pc ) ( i32.const 1 ) ) )
                        ( br $START ) )
                )
                ( if ( i32.eq ( get_local $pc ) ( i32.const 1 ) )
                    ( then
                        ( set_local $3 ( i32.const 0 ) )
                        ( return ( get_local $3 ) ) )
                )
                ( unreachable )
            )
        )
    )

    ( export "f" $f )
    ( memory 4096 )
)
