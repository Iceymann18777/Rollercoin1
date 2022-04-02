.class public Lcom/tappx/a/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/y2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/z2$c;
    }
.end annotation


# static fields
.field private static volatile h:Lcom/tappx/a/y2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/m1$a;

.field private c:Lcom/tappx/a/z2$c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/m1$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/tappx/a/z2;->b:Lcom/tappx/a/m1$a;

    .line 8
    sget-object p1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/y2;
    .registers 4

    .line 3
    sget-object v0, Lcom/tappx/a/z2;->h:Lcom/tappx/a/y2;

    if-nez v0, :cond_1f

    .line 5
    const-class v0, Lcom/tappx/a/z2;

    monitor-enter v0

    .line 6
    :try_start_7
    sget-object v1, Lcom/tappx/a/z2;->h:Lcom/tappx/a/y2;

    if-nez v1, :cond_1a

    .line 8
    new-instance v1, Lcom/tappx/a/z2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/tappx/a/m1$a;->a(Landroid/content/Context;)Lcom/tappx/a/m1$a;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/tappx/a/z2;-><init>(Landroid/content/Context;Lcom/tappx/a/m1$a;)V

    sput-object v1, Lcom/tappx/a/z2;->h:Lcom/tappx/a/y2;

    .line 10
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0

    .line 12
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/tappx/a/z2;->h:Lcom/tappx/a/y2;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_21

    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x3e

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 97
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p2
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 80
    iget-object v1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v3, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-eq v1, v3, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {p1, v1}, Lcom/tappx/a/z2;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tappx/a/z2;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_31
    move-object v0, p1

    :cond_32
    :goto_32
    if-le p2, v2, :cond_3a

    sub-int/2addr p2, v2

    .line 86
    invoke-direct {p0, v0, p2}, Lcom/tappx/a/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 123
    :try_start_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    if-eqz p1, :cond_13

    .line 126
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_13
    const-string v0, ""

    :goto_15
    return-object v0
.end method

.method private a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .registers 4

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/tappx/a/z2;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method static synthetic a(Lcom/tappx/a/z2;Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/z2;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-ne v0, v1, :cond_b

    .line 45
    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tappx/a/w2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private a(Z)V
    .registers 11

    .line 46
    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-eq v0, v1, :cond_7

    return-void

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    const-string v1, "sp_tappx_referrer_send"

    const-string v2, "NotFound"

    invoke-static {v0, v1, v2}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 49
    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    const-string v4, "sp_tappx_install_id"

    invoke-static {v0, v4, v2}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c0

    const/4 v4, 0x0

    if-nez p1, :cond_3a

    new-array p1, v4, [Ljava/lang/Object;

    const-string v5, "Trying to Track Install"

    .line 53
    invoke-static {v5, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_3a
    new-array p1, v4, [Ljava/lang/Object;

    const-string v5, "Re-Trying to Track PENDING Install"

    .line 55
    invoke-static {v5, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :try_start_61
    const-string v0, "UTF-8"

    .line 59
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_67} :catch_68

    goto :goto_69

    :catch_68
    nop

    :goto_69
    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "ti->snd"

    .line 63
    invoke-static {v5, v0}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tappx/a/z2;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_c7

    const-string v0, "HTML"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/tappx/a/z2;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 68
    iget-object p1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {p1, v1, v3}, Lcom/tappx/a/w2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "ti->ok"

    .line 69
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Install Tracked"

    .line 70
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c7

    :cond_b1
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "ti->ko"

    .line 72
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Install NOT Tracked"

    .line 73
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c7

    .line 77
    :cond_c0
    iget-object p1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {p1, v1, v0}, Lcom/tappx/a/w2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const-string v0, ""

    .line 46
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_8

    move-object v1, v0

    goto :goto_23

    :catch_8
    move-exception p1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    move-object p1, v0

    .line 50
    :goto_23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, v0

    :goto_2c
    const-string v3, "HTML"

    .line 51
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_34

    move-object v0, v1

    :cond_34
    const-string p1, "ERROR"

    .line 52
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private b()Ljava/lang/String;
    .registers 7

    .line 53
    iget-object v0, p0, Lcom/tappx/a/z2;->b:Lcom/tappx/a/m1$a;

    invoke-virtual {v0}, Lcom/tappx/a/m1$a;->b()Lcom/tappx/a/m1;

    move-result-object v0

    .line 58
    :try_start_6
    iget-object v1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_2a

    .line 60
    :catch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unspecified_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/tappx/a/z2;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_2a
    :try_start_2a
    iget-object v2, v0, Lcom/tappx/a/m1;->d:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 66
    iget-object v2, v0, Lcom/tappx/a/m1;->d:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_33

    :catch_31
    :cond_31
    const-string v2, ""

    .line 74
    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p0}, Lcom/tappx/a/z2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Native"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/tappx/a/m1;->a:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->f:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    .line 88
    invoke-virtual {p0, p1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_13

    .line 90
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    return-object p1
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    if-eqz p1, :cond_12

    .line 45
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_12
    const-string p0, ""

    :goto_14
    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "token"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_70

    if-nez p1, :cond_b

    const-string p1, ""

    :cond_b
    const/4 v1, -0x1

    .line 3
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x76261428

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_46

    const v3, 0x3372f

    if-eq v2, v3, :cond_3c

    const v3, 0x8f0631a

    if-eq v2, v3, :cond_32

    const v3, 0x1c1b4930

    if-eq v2, v3, :cond_28

    goto :goto_4f

    :cond_28
    const-string v2, "TAPPX_AUX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x3

    goto :goto_4f

    :cond_32
    const-string v2, "TAPPX_INSTALL_GETCLASS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x0

    goto :goto_4f

    :cond_3c
    const-string v2, "TAPPX_INSTALL_TESTMODE_APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    goto :goto_4f

    :cond_46
    const-string v2, "TAPPX_INSTALL_TESTMODE_MANUAL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x2

    :cond_4f
    :goto_4f
    if-eqz v1, :cond_6b

    if-eq v1, v6, :cond_66

    if-eq v1, v5, :cond_61

    if-eq v1, v4, :cond_5c

    .line 17
    sget-object p1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    .line 33
    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    goto :goto_93

    .line 18
    :cond_5c
    sget-object p1, Lcom/tappx/a/z2$c;->b:Lcom/tappx/a/z2$c;

    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    goto :goto_93

    .line 19
    :cond_61
    sget-object p1, Lcom/tappx/a/z2$c;->d:Lcom/tappx/a/z2$c;

    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    goto :goto_93

    .line 20
    :cond_66
    sget-object p1, Lcom/tappx/a/z2$c;->c:Lcom/tappx/a/z2$c;

    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    goto :goto_93

    .line 21
    :cond_6b
    sget-object p1, Lcom/tappx/a/z2$c;->b:Lcom/tappx/a/z2$c;

    iput-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6f} :catch_70

    goto :goto_93

    :catch_70
    move-exception p1

    const-string v1, "no string token"

    .line 37
    invoke-direct {p0, v1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR01: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    return-void
.end method

.method private b(Z)V
    .registers 3

    .line 40
    new-instance v0, Lcom/tappx/a/z2$a;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/z2$a;-><init>(Lcom/tappx/a/z2;Z)V

    invoke-static {v0}, Lcom/tappx/a/x2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 6

    const-string v0, "ts"

    .line 24
    iget-object v1, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 25
    iget-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    return-object v0

    .line 28
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/tappx/a/z2;->d()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "tappx.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-direct {p0, v1, v3, v4}, Lcom/tappx/a/z2;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Using device timestamp!"

    .line 39
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_68
    iget-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "referrer"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_46

    if-nez v2, :cond_c

    move-object v2, v0

    .line 7
    :cond_c
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_41

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_43

    if-eqz p1, :cond_41

    .line 11
    :try_start_18
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_21

    if-nez p1, :cond_1f

    goto :goto_66

    :cond_1f
    move-object v0, p1

    goto :goto_66

    :catch_21
    move-exception p1

    :try_start_22
    const-string v0, "02. no URI referrer"

    .line 15
    invoke-direct {p0, v0}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR02: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_43

    :cond_41
    move-object v0, v2

    goto :goto_66

    :catch_43
    move-exception p1

    move-object v0, v2

    goto :goto_47

    :catch_46
    move-exception p1

    :goto_47
    const-string v2, "01. No string referrer"

    .line 22
    invoke-direct {p0, v2}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR01: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_66
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/tappx/a/z2$c;->c:Lcom/tappx/a/z2$c;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 2

    const-string v0, "L6AMiu9M3Gzzgb1DcC9zrNWKirwrdRZWS7ho5031f9E0pLEIRwh4cyjVdbI6wKX/"

    .line 26
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedReferrer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    const-string v2, "sp_tappx_referrer"

    const-string v3, "NotFound"

    invoke-static {v1, v2, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_af

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_af

    const-string v0, "referrer="

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_34

    add-int/lit8 v0, v0, 0x9

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_34
    const-string v0, "UTF-8"

    .line 9
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 11
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_45
    if-ge v3, v1, :cond_9b

    aget-object v4, v0, v3

    const-string v5, "="

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_98

    .line 15
    aget-object v6, v4, v2

    const-string v8, "tappxs"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 16
    aget-object v6, v4, v7

    iput-object v6, p0, Lcom/tappx/a/z2;->d:Ljava/lang/String;

    goto :goto_7f

    .line 17
    :cond_62
    aget-object v6, v4, v2

    const-string v8, "tappxp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 18
    aget-object v6, v4, v7

    iput-object v6, p0, Lcom/tappx/a/z2;->e:Ljava/lang/String;

    goto :goto_7f

    .line 19
    :cond_71
    aget-object v6, v4, v2

    const-string v8, "ord"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 20
    aget-object v6, v4, v7

    iput-object v6, p0, Lcom/tappx/a/z2;->f:Ljava/lang/String;

    .line 22
    :cond_7f
    :goto_7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    :cond_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 25
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Referrer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    :cond_af
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    const-string v0, "wB98799JR2eOU8JQBj+AirJiMR1odQqWWeVt5DvdwLDbO/6GMnE3dISVriMmbsHg"

    .line 26
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    const-string v2, "sp_tappx_referrer"

    const-string v3, "NotFound"

    if-ne v0, v1, :cond_11

    .line 2
    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v3

    .line 4
    :goto_12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_51

    .line 5
    invoke-direct {p0, v2, p1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/tappx/a/z2;->d:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p1, p0, Lcom/tappx/a/z2;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 11
    invoke-direct {p0}, Lcom/tappx/a/z2;->b()Ljava/lang/String;

    move-result-object v0

    const-string p1, "sp_tappx_install_id"

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_41

    :cond_39
    const-string p1, "sp_tappx_referrer_send"

    const-string v1, "0"

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_41
    if-eqz p1, :cond_68

    .line 18
    iget-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-ne p1, v1, :cond_4d

    .line 19
    invoke-direct {p0, v3}, Lcom/tappx/a/z2;->b(Z)V

    goto :goto_68

    .line 21
    :cond_4d
    invoke-direct {p0, v0}, Lcom/tappx/a/z2;->g(Ljava/lang/String;)V

    goto :goto_68

    .line 24
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old_referrer = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, v3}, Lcom/tappx/a/z2;->b(Z)V

    :cond_68
    :goto_68
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 11

    const-string v0, "|"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Trying to Track Install"

    .line 1
    invoke-static {v3, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/tappx/a/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :try_start_2f
    const-string v2, "UTF-8"

    .line 4
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    nop

    :goto_37
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ti->snd"

    .line 8
    invoke-static {v3, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tappx/a/z2;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14f

    .line 11
    iget-object v2, p0, Lcom/tappx/a/z2;->b:Lcom/tappx/a/m1$a;

    invoke-virtual {v2}, Lcom/tappx/a/m1$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTML"

    .line 12
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/tappx/a/z2;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ERROR"

    .line 13
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/tappx/a/z2;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    iget-object v7, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v8, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-eq v7, v8, :cond_14f

    if-eqz v6, :cond_99

    .line 16
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_99

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TrackInstall Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14f

    .line 19
    :cond_99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TrackInstall result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/tappx/a/z2;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "ti->ok"

    .line 21
    invoke-static {v3, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "Install Tracked"

    .line 22
    invoke-static {v3, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e0

    :cond_d2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "ti->ko"

    .line 24
    invoke-static {v3, p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "Install NOT Tracked"

    .line 25
    invoke-static {v3, p1}, Lcom/tappx/a/j0;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :goto_e0
    sget-object p1, Lcom/tappx/a/z2$c;->c:Lcom/tappx/a/z2$c;

    iget-object v3, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 30
    :try_start_ea
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 31
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.tappx.TrackingTestApp"

    .line 32
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.tappx.TrackingTestApp.TEST_INSTALL"

    .line 33
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_103} :catch_134

    const-string v3, "android.intent.extra.TEXT"

    .line 35
    :try_start_105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0}, Lcom/tappx/a/z2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_133} :catch_134

    goto :goto_14f

    :catch_134
    move-exception p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending to TestApp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14f
    :goto_14f
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/z2$b;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/z2$b;-><init>(Lcom/tappx/a/z2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tappx/a/x2;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 98
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 102
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 103
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 104
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 105
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 106
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, ""

    .line 109
    :goto_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 115
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 117
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    return-object v2

    .line 118
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/tappx/a/z2;->b(Z)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 7

    .line 14
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->b(Landroid/content/Intent;)V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/tappx/a/z2;->d:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tappx/a/z2;->e:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tappx/a/z2;->f:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tappx/a/z2;->g:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->b:Lcom/tappx/a/z2$c;

    if-ne v0, v1, :cond_14

    return-void

    .line 21
    :cond_14
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 25
    :try_start_21
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->d(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->e(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_27} :catch_29

    goto/16 :goto_ca

    :catch_29
    move-exception p1

    const-string v1, "No string referrer"

    .line 28
    invoke-direct {p0, v1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_ca

    .line 32
    :cond_4b
    iget-object v1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    const-string v2, "sp_tappx_referrer"

    const-string v3, "NotFound"

    invoke-static {v1, v2, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "sp_tappx_referrer_send"

    if-eqz v1, :cond_72

    .line 33
    invoke-direct {p0, v2, p1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {p1, v4, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    const-string p1, "0"

    .line 35
    invoke-direct {p0, v4, p1}, Lcom/tappx/a/z2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 37
    :cond_72
    iget-object p1, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    sget-object v1, Lcom/tappx/a/z2$c;->a:Lcom/tappx/a/z2$c;

    if-ne p1, v1, :cond_7b

    .line 38
    invoke-direct {p0, v0}, Lcom/tappx/a/z2;->b(Z)V

    .line 40
    :cond_7b
    :goto_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->c:Lcom/tappx/a/z2$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    const-string p1, "Not referrer INFO received."

    .line 41
    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SavedReferrer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InstallSend   = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/z2;->a:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/tappx/a/w2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/z2;->c(Ljava/lang/String;)V

    :goto_ca
    return-void
.end method
