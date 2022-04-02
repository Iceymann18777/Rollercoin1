.class public Lcom/tappx/a/g1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static volatile b:Lcom/tappx/a/g1$b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/g1$b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 8

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p2

    :goto_14
    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/tappx/a/g1$b;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 16
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_e} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    goto :goto_12

    :catch_11
    move-exception p1

    .line 18
    :goto_12
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/g1$b;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/g1$b;->b:Lcom/tappx/a/g1$b;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/tappx/a/g1$b;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/g1$b;->b:Lcom/tappx/a/g1$b;

    if-nez v1, :cond_12

    .line 6
    new-instance v1, Lcom/tappx/a/g1$b;

    invoke-direct {v1, p0}, Lcom/tappx/a/g1$b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/g1$b;->b:Lcom/tappx/a/g1$b;

    .line 8
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 10
    :cond_17
    :goto_17
    sget-object p0, Lcom/tappx/a/g1$b;->b:Lcom/tappx/a/g1$b;

    return-object p0
.end method

.method private b()Lcom/tappx/a/g1$a;
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g1$b;->d()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_8
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 5
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 6
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-long v6, v1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    .line 8
    new-instance v0, Lcom/tappx/a/g1$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tappx/a/g1$a;-><init>(DDJJ)V

    return-object v0
.end method

.method private c()Landroid/location/Location;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g1$b;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    const-string v0, "gps"

    .line 3
    invoke-direct {p0, v0}, Lcom/tappx/a/g1$b;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/location/Location;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g1$b;->e()Landroid/location/Location;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/g1$b;->c()Landroid/location/Location;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/tappx/a/g1$b;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/location/Location;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g1$b;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tappx/a/g1$b;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    return-object v0

    :cond_1c
    const-string v0, "network"

    .line 3
    invoke-direct {p0, v0}, Lcom/tappx/a/g1$b;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 5

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/g1;
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/tappx/a/g1$b;->f()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/tappx/a/g1$b;->b()Lcom/tappx/a/g1$a;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/tappx/a/g1;

    invoke-direct {v2, v0, v1}, Lcom/tappx/a/g1;-><init>(Ljava/lang/String;Lcom/tappx/a/g1$a;)V

    return-object v2
.end method
