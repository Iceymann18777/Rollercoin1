.class public Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final CSV_QUOTE_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x22

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 178
    :try_start_1
    invoke-static {p0, v0, v0}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 226
    invoke-static {v0, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V

    .line 228
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p0

    .line 231
    :catch_17
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "escapeJavaStyleString error!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_10c

    if-nez p1, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_10b

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xfff

    if-le v2, v3, :cond_2e

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_2e
    const/16 v3, 0xff

    if-le v2, v3, :cond_4c

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_4c
    const/16 v3, 0x7f

    const-string v4, "\\u00"

    if-le v2, v3, :cond_6a

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_6a
    const/16 v3, 0x20

    const/16 v5, 0x5c

    if-ge v2, v3, :cond_d6

    packed-switch v2, :pswitch_data_116

    :pswitch_73
    const/16 v3, 0xf

    if-le v2, v3, :cond_bd

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_107

    .line 286
    :pswitch_8f
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x72

    .line 287
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_107

    .line 282
    :pswitch_99
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x66

    .line 283
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 274
    :pswitch_a2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x6e

    .line 275
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 278
    :pswitch_ab
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x74

    .line 279
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 270
    :pswitch_b4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x62

    .line 271
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 293
    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_107

    :cond_d6
    const/16 v3, 0x22

    if-eq v2, v3, :cond_101

    const/16 v3, 0x27

    if-eq v2, v3, :cond_f8

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_ef

    if-eq v2, v5, :cond_e8

    .line 320
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 310
    :cond_e8
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 311
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    :cond_ef
    if-eqz p3, :cond_f4

    .line 315
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 317
    :cond_f4
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    :cond_f8
    if-eqz p2, :cond_fd

    .line 301
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 303
    :cond_fd
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_107

    .line 306
    :cond_101
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 307
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    :goto_107
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_10b
    return-void

    .line 250
    :cond_10c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Writer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_115

    :goto_114
    throw p0

    :goto_115
    goto :goto_114

    :pswitch_data_116
    .packed-switch 0x8
        :pswitch_b4
        :pswitch_ab
        :pswitch_a2
        :pswitch_73
        :pswitch_99
        :pswitch_8f
    .end packed-switch
.end method

.method private static hex(C)Ljava/lang/String;
    .registers 2

    .line 328
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
