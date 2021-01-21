project "freetype2"
    kind "StaticLib"
    language "C"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
       "include"
    }
    
    files
    {
        "src/base/ftsystem.c",
        "src/base/ftinit.c",
        "src/base/ftdebug.c",

        "src/base/ftbase.c",

        "src/base/ftbbox.c"  ,
        "src/base/ftglyph.c",

        "src/base/ftbdf.c" ,
        "src/base/ftbitmap.c",
        "src/base/ftcid.c",
        "src/base/ftfstype.c",
        "src/base/ftgasp.c",
        "src/base/ftgxval.c",
        "src/base/ftmm.c",
        "src/base/ftotval.c",
        "src/base/ftpatent.c",
        "src/base/ftpfr.c",
        "src/base/ftstroke.c",
        "src/base/ftsynth.c",
        "src/base/fttype1.c",
        "src/base/ftwinfnt.c",

        "src/bdf/bdf.c",
        "src/cff/cff.c",
        "src/cid/type1cid.c",
        "src/pcf/pcf.c",
        "src/pfr/pfr.c",
        "src/sfnt/sfnt.c",

        "src/truetype/truetype.c",
        "src/type1/type1.c",
        "src/type42/type42.c",
        "src/winfonts/winfnt.c",
        --- for mac  src/base/ftmac.c
        "src/raster/raster.c",
        "src/smooth/smooth.c",

        "src/autofit/autofit.c",
        "src/cache/ftcache.c",
        "src/gzip/ftgzip.c",
        "src/lzw/ftlzw.c",
        "src/bzip2/ftbzip2.c",
        "src/gxvalid/gxvalid.c",
        "src/otvalid/otvalid.c",
        "src/psaux/psaux.c",
        "src/pshinter/pshinter.c",
        "src/psnames/psnames.c",

    }
    
    defines
    {
        "WIN32",
        "WIN32_LEAN_AND_MEAN",
        "VC_EXTRALEAN",
        "_CRT_SECURE_NO_WARNINGS",
        "FT2_BUILD_LIBRARY"
    }    
    
    configuration "debug"
        defines 
        {
            "FT_DEBUG_LEVEL_ERROR",
            "FT_DEBUG_LEVEL_TRACE"
        }
      
        symbols "on"
      
    configuration "release"
		defines
		{
			"NDEBUG"
		}
		optimize "on"
