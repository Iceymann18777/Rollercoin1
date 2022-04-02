.class public Lcom/tappx/a/i1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static volatile b:Lcom/tappx/a/i1$a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/i1$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/i1$a;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/i1$a;->b:Lcom/tappx/a/i1$a;

    if-nez v0, :cond_1b

    .line 3
    const-class v0, Lcom/tappx/a/i1$a;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/i1$a;->b:Lcom/tappx/a/i1$a;

    if-nez v1, :cond_16

    .line 6
    new-instance v1, Lcom/tappx/a/i1$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tappx/a/i1$a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/i1$a;->b:Lcom/tappx/a/i1$a;

    .line 8
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 10
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/tappx/a/i1$a;->b:Lcom/tappx/a/i1$a;

    return-object p0
.end method

.method private a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method

.method private b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Lcom/tappx/a/i1;
    .registers 13

    .line 11
    iget-object v0, p0, Lcom/tappx/a/i1$a;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 12
    iget-object v0, p0, Lcom/tappx/a/i1$a;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v4, v2

    goto :goto_28

    :cond_26
    move-object v4, v1

    move-object v5, v4

    .line 21
    :goto_28
    iget-object v0, p0, Lcom/tappx/a/i1$a;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6b

    .line 24
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->e(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->f(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/i1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v8, v3

    move-object v9, v6

    move-object v10, v7

    move-object v6, v1

    move-object v7, v2

    goto :goto_71

    :cond_6b
    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 32
    :goto_71
    new-instance v0, Lcom/tappx/a/i1;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/tappx/a/i1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
