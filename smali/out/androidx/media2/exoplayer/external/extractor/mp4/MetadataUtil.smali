.class final Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final STANDARD_GENRES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 148

    const-string v0, "Blues"

    const-string v1, "Classic Rock"

    const-string v2, "Country"

    const-string v3, "Dance"

    const-string v4, "Disco"

    const-string v5, "Funk"

    const-string v6, "Grunge"

    const-string v7, "Hip-Hop"

    const-string v8, "Jazz"

    const-string v9, "Metal"

    const-string v10, "New Age"

    const-string v11, "Oldies"

    const-string v12, "Other"

    const-string v13, "Pop"

    const-string v14, "R&B"

    const-string v15, "Rap"

    const-string v16, "Reggae"

    const-string v17, "Rock"

    const-string v18, "Techno"

    const-string v19, "Industrial"

    const-string v20, "Alternative"

    const-string v21, "Ska"

    const-string v22, "Death Metal"

    const-string v23, "Pranks"

    const-string v24, "Soundtrack"

    const-string v25, "Euro-Techno"

    const-string v26, "Ambient"

    const-string v27, "Trip-Hop"

    const-string v28, "Vocal"

    const-string v29, "Jazz+Funk"

    const-string v30, "Fusion"

    const-string v31, "Trance"

    const-string v32, "Classical"

    const-string v33, "Instrumental"

    const-string v34, "Acid"

    const-string v35, "House"

    const-string v36, "Game"

    const-string v37, "Sound Clip"

    const-string v38, "Gospel"

    const-string v39, "Noise"

    const-string v40, "AlternRock"

    const-string v41, "Bass"

    const-string v42, "Soul"

    const-string v43, "Punk"

    const-string v44, "Space"

    const-string v45, "Meditative"

    const-string v46, "Instrumental Pop"

    const-string v47, "Instrumental Rock"

    const-string v48, "Ethnic"

    const-string v49, "Gothic"

    const-string v50, "Darkwave"

    const-string v51, "Techno-Industrial"

    const-string v52, "Electronic"

    const-string v53, "Pop-Folk"

    const-string v54, "Eurodance"

    const-string v55, "Dream"

    const-string v56, "Southern Rock"

    const-string v57, "Comedy"

    const-string v58, "Cult"

    const-string v59, "Gangsta"

    const-string v60, "Top 40"

    const-string v61, "Christian Rap"

    const-string v62, "Pop/Funk"

    const-string v63, "Jungle"

    const-string v64, "Native American"

    const-string v65, "Cabaret"

    const-string v66, "New Wave"

    const-string v67, "Psychadelic"

    const-string v68, "Rave"

    const-string v69, "Showtunes"

    const-string v70, "Trailer"

    const-string v71, "Lo-Fi"

    const-string v72, "Tribal"

    const-string v73, "Acid Punk"

    const-string v74, "Acid Jazz"

    const-string v75, "Polka"

    const-string v76, "Retro"

    const-string v77, "Musical"

    const-string v78, "Rock & Roll"

    const-string v79, "Hard Rock"

    const-string v80, "Folk"

    const-string v81, "Folk-Rock"

    const-string v82, "National Folk"

    const-string v83, "Swing"

    const-string v84, "Fast Fusion"

    const-string v85, "Bebob"

    const-string v86, "Latin"

    const-string v87, "Revival"

    const-string v88, "Celtic"

    const-string v89, "Bluegrass"

    const-string v90, "Avantgarde"

    const-string v91, "Gothic Rock"

    const-string v92, "Progressive Rock"

    const-string v93, "Psychedelic Rock"

    const-string v94, "Symphonic Rock"

    const-string v95, "Slow Rock"

    const-string v96, "Big Band"

    const-string v97, "Chorus"

    const-string v98, "Easy Listening"

    const-string v99, "Acoustic"

    const-string v100, "Humour"

    const-string v101, "Speech"

    const-string v102, "Chanson"

    const-string v103, "Opera"

    const-string v104, "Chamber Music"

    const-string v105, "Sonata"

    const-string v106, "Symphony"

    const-string v107, "Booty Bass"

    const-string v108, "Primus"

    const-string v109, "Porn Groove"

    const-string v110, "Satire"

    const-string v111, "Slow Jam"

    const-string v112, "Club"

    const-string v113, "Tango"

    const-string v114, "Samba"

    const-string v115, "Folklore"

    const-string v116, "Ballad"

    const-string v117, "Power Ballad"

    const-string v118, "Rhythmic Soul"

    const-string v119, "Freestyle"

    const-string v120, "Duet"

    const-string v121, "Punk Rock"

    const-string v122, "Drum Solo"

    const-string v123, "A capella"

    const-string v124, "Euro-House"

    const-string v125, "Dance Hall"

    const-string v126, "Goa"

    const-string v127, "Drum & Bass"

    const-string v128, "Club-House"

    const-string v129, "Hardcore"

    const-string v130, "Terror"

    const-string v131, "Indie"

    const-string v132, "BritPop"

    const-string v133, "Negerpunk"

    const-string v134, "Polsk Punk"

    const-string v135, "Beat"

    const-string v136, "Christian Gangsta Rap"

    const-string v137, "Heavy Metal"

    const-string v138, "Black Metal"

    const-string v139, "Crossover"

    const-string v140, "Contemporary Christian"

    const-string v141, "Christian Rock"

    const-string v142, "Merengue"

    const-string v143, "Salsa"

    const-string v144, "Thrash Metal"

    const-string v145, "Anime"

    const-string v146, "Jpop"

    const-string v147, "Synthpop"

    .line 85
    filled-new-array/range {v0 .. v147}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public static getFormatWithMetadata(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/Format;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackType",
            "format",
            "udtaMetadata",
            "mdtaMetadata",
            "gaplessInfoHolder"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    .line 134
    invoke-virtual {p4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 135
    iget p0, p4, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    iget p3, p4, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 136
    invoke-virtual {p1, p0, p3}, Landroidx/media2/exoplayer/external/Format;->copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    :cond_11
    if-eqz p2, :cond_69

    .line 141
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    goto :goto_69

    :cond_18
    const/4 p2, 0x2

    if-ne p0, p2, :cond_69

    if-eqz p3, :cond_69

    const/4 p0, 0x0

    const/4 p2, 0x0

    .line 145
    :goto_1f
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result p4

    if-ge p2, p4, :cond_69

    .line 146
    invoke-virtual {p3, p2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object p4

    .line 147
    instance-of v1, p4, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    if-eqz v1, :cond_66

    .line 148
    check-cast p4, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    .line 149
    iget-object v1, p4, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v2, "com.android.capture.fps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget v1, p4, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_66

    .line 152
    :try_start_3f
    iget-object v1, p4, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    .line 153
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 154
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v2, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object p4, v2, p0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    const-string p4, "MetadataUtil"

    const-string v1, "Ignoring invalid framerate"

    .line 156
    invoke-static {p4, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    :goto_66
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_69
    :goto_69
    return-object p1
.end method

.method private static parseCommentAttribute(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "data"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 291
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_20

    const/16 p0, 0x8

    .line 293
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 294
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 295
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_20
    const-string p1, "Failed to parse comment attribute: "

    .line 297
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    :cond_35
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3a
    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCoverArt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 357
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    const-string v2, "MetadataUtil"

    const/4 v3, 0x0

    const v4, 0x64617461

    if-ne v1, v4, :cond_53

    .line 359
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 360
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1f

    const-string v4, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v4, 0xe

    if-ne v1, v4, :cond_26

    const-string v4, "image/png"

    goto :goto_27

    :cond_26
    move-object v4, v3

    :goto_27
    if-nez v4, :cond_40

    const/16 p0, 0x29

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unrecognized cover art flags: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_40
    const/4 v1, 0x4

    .line 366
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 367
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 369
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v4, v3, v0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_53
    const-string p0, "Failed to parse cover art attribute"

    .line 375
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static parseIlstElement(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ilst"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_116

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_1b

    goto/16 :goto_116

    :cond_1b
    const v2, 0x676e7265

    if-ne v1, v2, :cond_28

    .line 205
    :try_start_20
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_28
    const v2, 0x6469736b

    if-ne v1, v2, :cond_37

    :try_start_2d
    const-string v2, "TPOS"

    .line 207
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_37
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_46

    :try_start_3c
    const-string v2, "TRCK"

    .line 209
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_46
    const v2, 0x746d706f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_57

    :try_start_4d
    const-string v2, "TBPM"

    .line 211
    invoke-static {v1, v2, p0, v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_57
    const v2, 0x6370696c

    if-ne v1, v2, :cond_66

    :try_start_5c
    const-string v2, "TCMP"

    .line 213
    invoke-static {v1, v2, p0, v4, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_66
    const v2, 0x636f7672

    if-ne v1, v2, :cond_73

    .line 215
    :try_start_6b
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseCoverArt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_73
    const v2, 0x61415254

    if-ne v1, v2, :cond_82

    :try_start_78
    const-string v2, "TPE2"

    .line 217
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_82
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_91

    :try_start_87
    const-string v2, "TSOT"

    .line 219
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_91
    const v2, 0x736f616c

    if-ne v1, v2, :cond_a0

    :try_start_96
    const-string v2, "TSO2"

    .line 221
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_a0
    const v2, 0x736f6172

    if-ne v1, v2, :cond_af

    :try_start_a5
    const-string v2, "TSOA"

    .line 223
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_af
    const v2, 0x736f6161

    if-ne v1, v2, :cond_be

    :try_start_b4
    const-string v2, "TSOP"

    .line 225
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_be
    const v2, 0x736f636f

    if-ne v1, v2, :cond_cd

    :try_start_c3
    const-string v2, "TSOC"

    .line 227
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_cd
    const v2, 0x72746e67

    if-ne v1, v2, :cond_dc

    :try_start_d2
    const-string v2, "ITUNESADVISORY"

    .line 229
    invoke-static {v1, v2, p0, v3, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_dc
    const v2, 0x70676170

    if-ne v1, v2, :cond_eb

    :try_start_e1
    const-string v2, "ITUNESGAPLESS"

    .line 231
    invoke-static {v1, v2, p0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_eb
    const v2, 0x736f736e

    if-ne v1, v2, :cond_fa

    :try_start_f0
    const-string v2, "TVSHOWSORT"

    .line 233
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_fa
    const v2, 0x74767368

    if-ne v1, v2, :cond_109

    :try_start_ff
    const-string v2, "TVSHOW"

    .line 235
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_109
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_1ab

    .line 237
    :try_start_10e
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseInternalAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_116
    :goto_116
    const v2, 0xffffff

    and-int/2addr v2, v1

    const v3, 0x636d74

    if-ne v2, v3, :cond_12a

    .line 184
    :try_start_11f
    invoke-static {v1, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catchall_127
    move-exception v1

    goto/16 :goto_1e3

    :cond_12a
    const v3, 0x6e616d

    if-eq v2, v3, :cond_1d9

    const v3, 0x74726b

    if-ne v2, v3, :cond_136

    goto/16 :goto_1d9

    :cond_136
    const v3, 0x636f6d

    if-eq v2, v3, :cond_1cf

    const v3, 0x777274

    if-ne v2, v3, :cond_142

    goto/16 :goto_1cf

    :cond_142
    const v3, 0x646179

    if-ne v2, v3, :cond_151

    :try_start_147
    const-string v2, "TDRC"

    .line 190
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_151
    const v3, 0x415254

    if-ne v2, v3, :cond_160

    :try_start_156
    const-string v2, "TPE1"

    .line 192
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_160
    const v3, 0x746f6f

    if-ne v2, v3, :cond_16f

    :try_start_165
    const-string v2, "TSSE"

    .line 194
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_16f
    const v3, 0x616c62

    if-ne v2, v3, :cond_17e

    :try_start_174
    const-string v2, "TALB"

    .line 196
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_17e
    const v3, 0x6c7972

    if-ne v2, v3, :cond_18d

    :try_start_183
    const-string v2, "USLT"

    .line 198
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_18d
    const v3, 0x67656e

    if-ne v2, v3, :cond_19c

    :try_start_192
    const-string v2, "TCON"

    .line 200
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_19c
    const v3, 0x677270

    if-ne v2, v3, :cond_1ab

    :try_start_1a1
    const-string v2, "TIT1"

    .line 202
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1ab
    :try_start_1ab
    const-string v2, "MetadataUtil"

    const-string v3, "Skipped unknown metadata entry: "

    .line 239
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c7

    :cond_1c2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c7
    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ca
    .catchall {:try_start_1ab .. :try_end_1ca} :catchall_127

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1cf
    :goto_1cf
    :try_start_1cf
    const-string v2, "TCOM"

    .line 188
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1d5
    .catchall {:try_start_1cf .. :try_end_1d5} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1d9
    :goto_1d9
    :try_start_1d9
    const-string v2, "TIT2"

    .line 186
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1df
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_127

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :goto_1e3
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    throw v1
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "attributeName",
            "data"
        }
    .end annotation

    .line 324
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 325
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_59

    const/16 v1, 0x16

    if-lt v0, v1, :cond_59

    const/16 v0, 0xa

    .line 327
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 328
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_59

    const/16 p0, 0xb

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_53

    .line 333
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 335
    :cond_53
    new-instance p2, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v2, p0}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_59
    const-string p1, "Failed to parse index/count attribute: "

    .line 338
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_6e

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    :cond_6e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_73
    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseInternalAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "endPosition"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 385
    :goto_6
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_41

    .line 386
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 387
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 389
    invoke-virtual {p0, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_28

    add-int/lit8 v7, v7, -0xc

    .line 391
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_28
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_34

    add-int/lit8 v7, v7, -0xc

    .line 393
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_34
    const v9, 0x64617461

    if-ne v8, v9, :cond_3b

    move v4, v6

    move v5, v7

    :cond_3b
    add-int/lit8 v7, v7, -0xc

    .line 399
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_41
    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-ne v4, v0, :cond_48

    goto :goto_5b

    .line 405
    :cond_48
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 406
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 407
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 408
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public static parseMdtaMetadataEntryFromIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ilst",
            "endPosition",
            "key"
        }
    .end annotation

    .line 258
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 259
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 260
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_29

    .line 262
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 263
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    .line 265
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 267
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    invoke-direct {p0, p2, v2, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_29
    add-int/2addr v0, v1

    .line 269
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStandardGenreAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 344
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 345
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_11

    add-int/lit8 p0, p0, -0x1

    .line 346
    aget-object p0, v1, p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    if-eqz p0, :cond_1c

    .line 348
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    .line 350
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "id",
            "data"
        }
    .end annotation

    .line 277
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 278
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_1f

    const/16 p0, 0x8

    .line 280
    invoke-virtual {p2, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 281
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 282
    new-instance p2, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v2, p0}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1f
    const-string p1, "Failed to parse text attribute: "

    .line 284
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_34

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_39

    :cond_34
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_39
    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "id",
            "data",
            "isTextInformationFrame",
            "isBoolean"
        }
    .end annotation

    .line 308
    invoke-static {p2}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 310
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_26

    if-eqz p3, :cond_1a

    .line 314
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 315
    :cond_1a
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "und"

    invoke-direct {p0, p3, p1, p2}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-object p0

    :cond_26
    const-string p1, "Failed to parse uint8 attribute: "

    .line 317
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    :cond_3b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_40
    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x4

    .line 412
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 413
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x64617461

    if-ne v0, v1, :cond_17

    const/16 v0, 0x8

    .line 415
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 416
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_17
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    .line 418
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
