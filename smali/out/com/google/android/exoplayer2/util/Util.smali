.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field private static final CRC8_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field public static final EMPTY_BYTE_ARRAY:[B

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final iso3BibliographicalToIso2:[Ljava/lang/String;

.field private static languageTagIso3ToIso2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 41

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 106
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 112
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 118
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 127
    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    .line 130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%([A-Fa-f0-9]{2})"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "alb"

    const-string v2, "sq"

    const-string v3, "arm"

    const-string v4, "hy"

    const-string v5, "baq"

    const-string v6, "eu"

    const-string v7, "bur"

    const-string v8, "my"

    const-string v9, "tib"

    const-string v10, "bo"

    const-string v11, "chi"

    const-string v12, "zh"

    const-string v13, "cze"

    const-string v14, "cs"

    const-string v15, "dut"

    const-string v16, "nl"

    const-string v17, "ger"

    const-string v18, "de"

    const-string v19, "gre"

    const-string v20, "el"

    const-string v21, "fre"

    const-string v22, "fr"

    const-string v23, "geo"

    const-string v24, "ka"

    const-string v25, "ice"

    const-string v26, "is"

    const-string v27, "mac"

    const-string v28, "mk"

    const-string v29, "mao"

    const-string v30, "mi"

    const-string v31, "may"

    const-string v32, "ms"

    const-string v33, "per"

    const-string v34, "fa"

    const-string v35, "rum"

    const-string v36, "ro"

    const-string v37, "slo"

    const-string v38, "sk"

    const-string v39, "wel"

    const-string v40, "cy"

    .line 2136
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->iso3BibliographicalToIso2:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 2164
    fill-array-data v1, :array_be

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    new-array v0, v0, [I

    .line 2208
    fill-array-data v0, :array_2c2

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC8_BYTES_MSBF:[I

    return-void

    :array_be
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_2c2
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method public static addWithOverflowDefault(JJJ)J
    .registers 9

    add-long v0, p0, p2

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_c

    return-wide p4

    :cond_c
    return-wide v0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    .line 249
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method public static binarySearchCeil([JJZZ)I
    .registers 9

    .line 888
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_9

    xor-int/lit8 p1, v0, -0x1

    goto :goto_1b

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 892
    array-length v1, p0

    if-ge v0, v1, :cond_15

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_9

    :cond_15
    if-eqz p3, :cond_1a

    add-int/lit8 p1, v0, -0x1

    goto :goto_1b

    :cond_1a
    move p1, v0

    :goto_1b
    if-eqz p4, :cond_24

    .line 897
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_24
    return p1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 822
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_21

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 826
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_a

    :cond_1b
    if-eqz p2, :cond_20

    add-int/lit8 p0, v0, 0x1

    goto :goto_21

    :cond_20
    move p0, v0

    :goto_21
    if-eqz p3, :cond_28

    const/4 p1, 0x0

    .line 831
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_28
    return p0
.end method

.method public static binarySearchFloor([JJZZ)I
    .registers 9

    .line 786
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_1b

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 790
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_a

    :cond_15
    if-eqz p3, :cond_1a

    add-int/lit8 p0, v0, 0x1

    goto :goto_1b

    :cond_1a
    move p0, v0

    :goto_1b
    if-eqz p4, :cond_22

    const/4 p1, 0x0

    .line 795
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_22
    return p0
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    return-object p0
.end method

.method public static castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    return-object p0
.end method

.method public static ceilDivide(II)I
    .registers 2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 632
    div-int/2addr p0, p1

    return p0
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 428
    :try_start_2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 444
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static compareLong(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static constrainValue(FFF)F
    .registers 3

    .line 679
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static constrainValue(III)I
    .registers 3

    .line 655
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static constrainValue(JJJ)J
    .registers 6

    .line 667
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 263
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 264
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static crc32([BIII)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_15

    shl-int/lit8 v0, p3, 0x8

    .line 1751
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 p3, p3, 0x18

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr p3, v2

    and-int/lit16 p3, p3, 0xff

    aget p3, v1, p3

    xor-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    return p3
.end method

.method public static createHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 2

    .line 382
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 3

    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method private static createIso3ToIso2Map()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2113
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 2114
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->iso3BibliographicalToIso2:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2117
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_2a

    aget-object v5, v0, v4

    .line 2120
    :try_start_15
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    .line 2121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 2122
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2129
    :cond_2a
    :goto_2a
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->iso3BibliographicalToIso2:[Ljava/lang/String;

    array-length v2, v0

    if-ge v3, v2, :cond_3b

    .line 2130
    aget-object v2, v0, v3

    add-int/lit8 v4, v3, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_2a

    :cond_3b
    return-object v1
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 621
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .registers 3

    .line 533
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .registers 5

    .line 545
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .registers 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_28

    return v0

    .line 1389
    :pswitch_5
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x18fc

    if-lt p0, v1, :cond_e

    return v2

    :cond_e
    const/16 v1, 0x15

    if-lt p0, v1, :cond_13

    return v2

    :cond_13
    return v0

    :pswitch_14
    const/16 p0, 0x4fc

    return p0

    :pswitch_17
    const/16 p0, 0xfc

    return p0

    :pswitch_1a
    const/16 p0, 0xdc

    return p0

    :pswitch_1d
    const/16 p0, 0xcc

    return p0

    :pswitch_20
    const/16 p0, 0x1c

    return p0

    :pswitch_23
    const/16 p0, 0xc

    return p0

    :pswitch_26
    const/4 p0, 0x4

    return p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_5
    .end packed-switch
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1286
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1287
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 1290
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1291
    array-length v2, p0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2b

    aget-object v4, p0, v3

    .line 1292
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_28

    .line 1293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_25

    const-string v5, ","

    .line 1294
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1299
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_35
    return-object v1
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1247
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 1248
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    const-string v2, ", "

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1253
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1b

    const-string v0, "phone"

    .line 1827
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1b

    .line 1829
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 1830
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1831
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1835
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 484
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 2074
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLooper()Landroid/os/Looper;
    .registers 1

    .line 406
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 407
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return-wide p0

    :cond_7
    long-to-double p0, p0

    float-to-double v0, p2

    .line 1123
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getMobileNetworkType(Landroid/net/NetworkInfo;)I
    .registers 1

    .line 2083
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_12

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "connectivity"

    .line 1788
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_f

    return v0

    .line 1793
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_13} :catch_3f

    const/4 v0, 0x1

    if-eqz p0, :cond_3f

    .line 1798
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_3f

    .line 1801
    :cond_1d
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_3a

    if-eq v1, v0, :cond_38

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3a

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3a

    const/4 p0, 0x6

    if-eq v1, p0, :cond_37

    const/16 p0, 0x9

    if-eq v1, p0, :cond_35

    const/16 p0, 0x8

    return p0

    :cond_35
    const/4 p0, 0x7

    return p0

    :cond_37
    return v0

    :cond_38
    const/4 p0, 0x2

    return p0

    .line 1809
    :cond_3a
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getMobileNetworkType(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0

    :catch_3f
    :cond_3f
    :goto_3f
    return v0
.end method

.method public static getPcmEncoding(I)I
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    const/16 v0, 0x18

    if-eq p0, v0, :cond_15

    const/16 v0, 0x20

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_15
    const/high16 p0, -0x80000000

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, 0x3

    return p0
.end method

.method public static getPcmFrameSize(II)I
    .registers 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1f

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x4

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    if-eq p0, v1, :cond_18

    if-ne p0, v2, :cond_12

    goto :goto_1c

    .line 1428
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_18
    return p1

    :cond_19
    mul-int/lit8 p1, p1, 0x2

    return p1

    :cond_1c
    :goto_1c
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_1f
    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return-wide p0

    :cond_7
    long-to-double p0, p0

    float-to-double v0, p2

    .line 1136
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_12
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static getSystemLanguageCodes()[Ljava/lang/String;
    .registers 3

    .line 1843
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocales()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1844
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 1845
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method private static getSystemLocales()[Ljava/lang/String;
    .registers 3

    .line 2061
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2062
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_13

    .line 2063
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2064
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_20
    return-object v0
.end method

.method private static getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .registers 2

    .line 2069
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_33

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    :pswitch_1e
    const-string p0, "none"

    return-object p0

    :pswitch_21
    const-string p0, "camera motion"

    return-object p0

    :pswitch_24
    const-string p0, "metadata"

    return-object p0

    :pswitch_27
    const-string p0, "text"

    return-object p0

    :pswitch_2a
    const-string p0, "video"

    return-object p0

    :pswitch_2d
    const-string p0, "audio"

    return-object p0

    :pswitch_30
    const-string p0, "default"

    return-object p0

    :cond_33
    const-string p0, "?"

    :goto_35
    return-object p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "UTF-8"

    .line 555
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isEncodingHighResolutionIntegerPcm(I)Z
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_b

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_14

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static isLinebreak(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 2

    .line 1906
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p0, :cond_17

    .line 1908
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method static synthetic lambda$newSingleThreadExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 417
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 417
    new-instance v0, Lcom/google/android/exoplayer2/util/-$$Lambda$Util$MRC4FgxCpRGDforKj-F0m_7VaCA;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/-$$Lambda$Util$MRC4FgxCpRGDforKj-F0m_7VaCA;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 501
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 502
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_16

    .line 504
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCodeSyntaxV21(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "und"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    move-object p0, v0

    .line 510
    :cond_26
    :goto_26
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    .line 511
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_61

    .line 515
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagIso3ToIso2:Ljava/util/HashMap;

    if-nez v1, :cond_44

    .line 516
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createIso3ToIso2Map()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagIso3ToIso2:Ljava/util/HashMap;

    .line 518
    :cond_44
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagIso3ToIso2:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_61
    return-object p0
.end method

.method private static normalizeLanguageCodeSyntaxV21(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 2079
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 346
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 347
    array-length p0, p0

    aput-object p1, v0, p0

    .line 348
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 360
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 361
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 319
    array-length v0, p0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 320
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 990
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d6

    const/16 p0, 0x9

    .line 996
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    goto :goto_4b

    .line 999
    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_4b

    :cond_23
    const/16 p0, 0xc

    .line 1002
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xd

    .line 1003
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int v2, p0, v1

    const/16 p0, 0xb

    .line 1004
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    mul-int/lit8 v2, v2, -0x1

    .line 1009
    :cond_4b
    :goto_4b
    new-instance p0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1011
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 1013
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x2

    .line 1014
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    const/4 v1, 0x3

    .line 1015
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x4

    .line 1016
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x5

    .line 1017
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x6

    .line 1018
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object v3, p0

    .line 1013
    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v3, 0x8

    .line 1019
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 1020
    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 1022
    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1025
    :cond_c8
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    if-eqz v2, :cond_d5

    const p0, 0xea60

    mul-int v2, v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_d5
    return-wide v0

    .line 992
    :cond_d6
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 1

    .line 459
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static removeRange(Ljava/util/List;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    if-ltz p1, :cond_14

    .line 283
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_14

    if-gt p1, p2, :cond_14

    if-eq p1, p2, :cond_13

    .line 287
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_13
    return-void

    .line 284
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J
    .registers 15

    .line 1152
    sget-object v0, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-wide p0

    .line 1155
    :cond_9
    iget-wide v3, p2, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    move-wide v1, p0

    .line 1156
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v0

    .line 1157
    iget-wide v4, p2, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide v6, 0x7fffffffffffffffL

    move-wide v2, p0

    .line 1158
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, p3

    if-gtz v5, :cond_2a

    cmp-long v5, p3, v2

    if-gtz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    cmp-long v6, v0, p5

    if-gtz v6, :cond_34

    cmp-long v6, p5, v2

    if-gtz v6, :cond_34

    goto :goto_35

    :cond_34
    const/4 p2, 0x0

    :goto_35
    if-eqz v5, :cond_4b

    if-eqz p2, :cond_4b

    sub-long v0, p3, p0

    .line 1163
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p0, p5, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-gtz p2, :cond_4a

    return-wide p3

    :cond_4a
    return-wide p5

    :cond_4b
    if-eqz v5, :cond_4e

    return-wide p3

    :cond_4e
    if-eqz p2, :cond_51

    return-wide p5

    :cond_51
    return-wide v0
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p4, p2

    if-ltz v2, :cond_f

    .line 1045
    rem-long v2, p4, p2

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    .line 1046
    div-long/2addr p4, p2

    .line 1047
    div-long/2addr p0, p4

    return-wide p0

    :cond_f
    cmp-long v2, p4, p2

    if-gez v2, :cond_1d

    .line 1048
    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_1d

    .line 1049
    div-long/2addr p2, p4

    mul-long p0, p0, p2

    return-wide p0

    :cond_1d
    long-to-double p2, p2

    long-to-double p4, p4

    .line 1052
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    long-to-double p0, p0

    .line 1053
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, p1

    if-ltz v3, :cond_19

    .line 1094
    rem-long v3, p3, p1

    cmp-long v5, v3, v0

    if-nez v5, :cond_19

    .line 1095
    div-long/2addr p3, p1

    .line 1096
    :goto_e
    array-length p1, p0

    if-ge v2, p1, :cond_4a

    .line 1097
    aget-wide p1, p0, v2

    div-long/2addr p1, p3

    aput-wide p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_19
    cmp-long v3, p3, p1

    if-gez v3, :cond_30

    .line 1099
    rem-long v3, p1, p3

    cmp-long v5, v3, v0

    if-nez v5, :cond_30

    .line 1100
    div-long/2addr p1, p3

    .line 1101
    :goto_24
    array-length p3, p0

    if-ge v2, p3, :cond_4a

    .line 1102
    aget-wide p3, p0, v2

    mul-long p3, p3, p1

    aput-wide p3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_30
    long-to-double p1, p1

    long-to-double p3, p3

    .line 1105
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    .line 1106
    :goto_39
    array-length p3, p0

    if-ge v2, p3, :cond_4a

    .line 1107
    aget-wide p3, p0, v2

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    double-to-long p3, p3

    aput-wide p3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4a
    return-void
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .registers 1

    .line 1707
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1712
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    .line 568
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    .line 582
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitCodecs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 1312
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(\\s*,\\s*)"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .registers 9

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    xor-long/2addr p0, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_c

    return-wide p4

    :cond_c
    return-wide v0
.end method

.method public static toArray(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1187
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1188
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1c

    .line 1190
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-object v1
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    .line 602
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    .line 612
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 1675
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    if-nez v3, :cond_19

    return-object p0

    :cond_19
    mul-int/lit8 v2, v3, 0x2

    sub-int v2, v0, v2

    .line 1684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1685
    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_28
    if-lez v3, :cond_4d

    .line 1687
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    .line 1688
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 1689
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, p0, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1690
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_4d
    if-ge v1, v0, :cond_52

    .line 1694
    invoke-virtual {v4, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1696
    :cond_52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eq p0, v2, :cond_5a

    const/4 p0, 0x0

    return-object p0

    .line 1699
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
