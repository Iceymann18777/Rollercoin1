.class public Lorg/altbeacon/beacon/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/altbeacon/beacon/Identifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECIMAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_DIGITS:[C

.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

.field private static final UUID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mValue:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^0x[0-9A-Fa-f]*$"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9A-Fa-f]*$"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

    const-string v0, "^0|[1-9][0-9]*$"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 320
    fill-array-data v0, :array_2a

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_DIGITS:[C

    return-void

    :array_2a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>([B)V
    .registers 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 227
    iput-object p1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    return-void

    .line 225
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Identifiers cannot be constructed from null pointers but \"value\" is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;
    .registers 5

    if-eqz p0, :cond_33

    if-ltz p1, :cond_2b

    .line 176
    array-length v0, p0

    if-gt p1, v0, :cond_2b

    .line 179
    array-length v0, p0

    if-gt p2, v0, :cond_23

    if-gt p1, p2, :cond_1b

    .line 186
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    if-eqz p3, :cond_15

    .line 188
    invoke-static {p0}, Lorg/altbeacon/beacon/Identifier;->reverseArray([B)V

    .line 190
    :cond_15
    new-instance p1, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {p1, p0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object p1

    .line 183
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start > end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_23
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "end > bytes.length"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_2b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "start < 0 || start > bytes.length"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_33
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Identifiers cannot be constructed from null pointers but \"bytes\" is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromInt(I)Lorg/altbeacon/beacon/Identifier;
    .registers 4

    if-ltz p0, :cond_1a

    const v0, 0xffff

    if-gt p0, v0, :cond_1a

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 157
    new-instance p0, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object p0

    .line 149
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Identifiers can only be constructed from integers between 0 and 65535 (inclusive)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromLong(JI)Lorg/altbeacon/beacon/Identifier;
    .registers 6

    if-ltz p2, :cond_1b

    .line 134
    new-array v0, p2, [B

    add-int/lit8 p2, p2, -0x1

    :goto_6
    if-ltz p2, :cond_15

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 136
    aput-byte v1, v0, p2

    const/16 v1, 0x8

    shr-long/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 139
    :cond_15
    new-instance p0, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object p0

    .line 132
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Identifier length must be > 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw p0

    :goto_24
    goto :goto_23
.end method

.method public static parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;
    .registers 2

    const/4 v0, -0x1

    .line 56
    invoke-static {p0, v0}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;
    .registers 4

    if-eqz p0, :cond_77

    .line 71
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_18

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0

    .line 75
    :cond_18
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "-"

    const-string v1, ""

    .line 76
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0

    .line 79
    :cond_31
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 82
    :try_start_3d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_55

    if-lez p1, :cond_50

    if-ne p1, v1, :cond_4a

    goto :goto_50

    :cond_4a
    int-to-long v0, p0

    .line 91
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/Identifier;->fromLong(JI)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0

    .line 88
    :cond_50
    :goto_50
    invoke-static {p0}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0

    :catchall_55
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse Identifier in decimal format."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 95
    :cond_5e
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 96
    invoke-static {p0, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object p0

    return-object p0

    .line 99
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to parse Identifier."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_77
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Identifiers cannot be constructed from null pointers but \"stringValue\" is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;
    .registers 6

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "0"

    if-nez v0, :cond_d

    const-string v0, ""

    goto :goto_e

    :cond_d
    move-object v0, v1

    .line 104
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-lez p1, :cond_36

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_36

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v2, p1, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_36
    if-lez p1, :cond_69

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_69

    mul-int/lit8 p1, p1, 0x2

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_56

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 114
    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_72
    if-ge v1, p1, :cond_8a

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 119
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 121
    :cond_8a
    new-instance p0, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object p0
.end method

.method private static reverseArray([B)V
    .registers 5

    const/4 v0, 0x0

    .line 284
    :goto_1
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_15

    .line 285
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 286
    aget-byte v2, p0, v0

    .line 287
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 288
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 23
    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Identifier;->compareTo(Lorg/altbeacon/beacon/Identifier;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/altbeacon/beacon/Identifier;)I
    .registers 10

    .line 388
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v0

    iget-object v2, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v3, :cond_11

    .line 389
    array-length p1, v0

    array-length v0, v2

    if-ge p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v4, 0x1

    :goto_10
    return v4

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 391
    :goto_13
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 392
    aget-byte v3, v2, v1

    iget-object v6, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v7, v6, v1

    if-eq v3, v7, :cond_29

    .line 393
    aget-byte p1, v2, v1

    aget-byte v0, v6, v1

    if-ge p1, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v4, 0x1

    :goto_28
    return v4

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 313
    instance-of v0, p1, Lorg/altbeacon/beacon/Identifier;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 316
    :cond_6
    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    .line 317
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iget-object p1, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 302
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toHexString()Ljava/lang/String;
    .registers 9

    .line 327
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 328
    new-array v1, v1, [C

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 329
    aput-char v3, v1, v4

    const/16 v3, 0x78

    const/4 v5, 0x1

    .line 330
    aput-char v3, v1, v5

    :goto_13
    if-ge v4, v0, :cond_32

    add-int/lit8 v3, v2, 0x1

    .line 332
    sget-object v5, Lorg/altbeacon/beacon/Identifier;->HEX_DIGITS:[C

    iget-object v6, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v7, v6, v4

    and-int/lit16 v7, v7, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v5, v7

    aput-char v7, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 333
    aget-byte v6, v6, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 335
    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public toInt()I
    .registers 5

    .line 255
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_8
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v2

    if-ge v0, v3, :cond_1d

    .line 261
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    array-length v2, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    return v1

    .line 256
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only supported for Identifiers with max byte length of 2"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 240
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 241
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_f
    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    .line 244
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1d
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUuid()Ljava/util/UUID;
    .registers 7

    .line 359
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1d

    .line 362
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1

    .line 360
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only Identifiers backed by a byte array with length of exactly 16 can be UUIDs."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
