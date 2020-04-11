package com.scd.migrations;

import org.apache.ibatis.migration.CommandLine;

/**
 * @author James
 */
public class MigrationHelp {

    public static void main( String[] args ) {
        String[] commond = {"--help"};
        new CommandLine(commond).execute();
    }
}
