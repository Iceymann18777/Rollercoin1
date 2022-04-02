.class public final Lcom/appnext/base/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkHelper"

.field private static final eI:J = 0x3e8L

.field private static final eJ:J = 0xea60L

.field private static final eK:J = 0x36ee80L

.field private static final eL:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/appnext/base/b/d$a;)Ljava/lang/Object;
    .registers 3

    .line 422
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/base/a/c/b;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 423
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 424
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/a/b/b;

    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object p0

    .line 425
    invoke-static {p0, p1}, Lcom/appnext/base/b/j;->b(Ljava/lang/String;Lcom/appnext/base/b/d$a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 6

    const-string v0, " "

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    :try_start_7
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 381
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {}, Lcom/appnext/base/b/j;->aT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 386
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_34

    .line 390
    :catchall_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-string v1, "activity"

    .line 115
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_56

    .line 120
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.GET_TASKS"

    invoke-static {p1, p2}, Lcom/appnext/base/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ba

    const/16 p1, 0x14

    .line 121
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ba

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    iget-object p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/appnext/base/b/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_34

    .line 126
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 135
    :cond_56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_ba

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/base/b/j;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "usagestats"

    .line 138
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x4

    sub-long v4, v6, p1

    move-object v2, v1

    .line 140
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7b

    return-object v0

    .line 145
    :cond_7b
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 146
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStats;

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_7f

    .line 149
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b6

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    cmp-long v4, v2, p3

    if-ltz v4, :cond_b6

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appnext/base/b/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    goto :goto_b6

    .line 153
    :cond_ae
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 150
    :cond_b6
    :goto_b6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V
    :try_end_b9
    .catchall {:try_start_8 .. :try_end_b9} :catchall_ba

    goto :goto_7f

    :catchall_ba
    :cond_ba
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/base/b/d$a;)V
    .registers 5

    .line 417
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    new-instance v1, Lcom/appnext/base/a/b/b;

    invoke-virtual {p2}, Lcom/appnext/base/b/d$a;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appnext/base/a/c/b;->b(Lcom/appnext/base/a/b/b;)J

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;II)V
    .registers 4

    .line 367
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 368
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_15

    const/16 v0, 0x30

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 371
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_18

    :catchall_18
    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    .line 90
    :try_start_1
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000

    .line 93
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_20

    if-lez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :catchall_20
    :cond_20
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/base/a/b/c;)Z
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x21ffe4c5

    if-eq v2, v3, :cond_c

    goto :goto_15

    :cond_c
    const-string v2, "interval"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    :cond_15
    :goto_15
    if-eqz v0, :cond_18

    return v1

    .line 61
    :cond_18
    invoke-static {p0}, Lcom/appnext/base/operations/b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Class;

    .line 63
    const-class v2, Lcom/appnext/base/a/b/c;

    aput-object v2, v0, v1

    const-class v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const/4 p2, 0x0

    aput-object p2, p1, v3

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/operations/a;

    .line 65
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->aE()Z

    move-result p0
    :try_end_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_41} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_41} :catch_42
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    return p0

    :catch_42
    :catchall_42
    return v1

    :catch_43
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    return v1
.end method

.method public static aT()Ljava/lang/String;
    .registers 4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    :try_start_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xf

    .line 342
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v2, v1

    const v1, 0xea60

    .line 343
    div-int/2addr v2, v1

    const/16 v1, 0x2b

    if-gez v2, :cond_29

    const/16 v1, 0x2d

    neg-int v2, v2

    :cond_29
    const-string v3, "GMT"

    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    div-int/lit8 v1, v2, 0x3c

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lcom/appnext/base/b/j;->a(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v0, v3, v2}, Lcom/appnext/base/b/j;->a(Ljava/lang/StringBuilder;II)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_41

    .line 362
    :catchall_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/appnext/base/b/d$a;)Ljava/lang/Object;
    .registers 3

    .line 434
    :try_start_0
    sget-object v0, Lcom/appnext/base/b/j$1;->fF:[I

    invoke-virtual {p1}, Lcom/appnext/base/b/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3e

    return-object p0

    .line 448
    :pswitch_c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 446
    :pswitch_12
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 444
    :pswitch_18
    new-instance p1, Ljava/util/HashSet;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 442
    :pswitch_28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 440
    :pswitch_2d
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 438
    :pswitch_32
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 436
    :pswitch_37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-object p0

    :catchall_3c
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "com.android"

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    return v3

    .line 182
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 183
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 184
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000

    .line 186
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 189
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_27

    .line 190
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    return v3

    .line 196
    :cond_42
    new-instance v2, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 197
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 202
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5b

    .line 204
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 206
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_7e

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_7e

    return v3

    :catchall_7e
    :cond_7e
    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "app_package"

    .line 274
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appnext/base/a/c/c;->t(Ljava/lang/String;)Lcom/appnext/base/a/b/c;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15b

    .line 275
    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_15b

    .line 278
    :cond_1f
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    return v2

    .line 281
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://apis.appnxt.net:443"

    .line 1030
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/data"

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 284
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1110
    invoke-static {v4, v2}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_55

    .line 286
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v4

    const-string v5, "google_ads_id"

    invoke-virtual {v4, v5, v6}, Lcom/appnext/base/b/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    :cond_55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5d

    return v7

    :cond_5d
    const-string v5, "aid"

    .line 293
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cuid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lvid"

    const-string v5, "4.7.2"

    .line 296
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_86
    const-string v4, "localdate"

    .line 299
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/appnext/base/b/j;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timezone"

    .line 300
    invoke-static {}, Lcom/appnext/base/b/j;->aT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Lcom/appnext/base/b/e;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a5

    goto :goto_a8

    .line 304
    :catchall_a5
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_a8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 314
    :cond_cc
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-------Sending to server data for key = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ----------"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_113

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "---- "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    :cond_113
    const/16 p0, 0x3a98

    .line 319
    :try_start_115
    sget-object p1, Lcom/appnext/base/b/d$a;->HashMap:Lcom/appnext/base/b/d$a;

    invoke-static {v1, v3, v7, p0, p1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/Object;ZILcom/appnext/base/b/d$a;)[B

    move-result-object p0

    if-eqz p0, :cond_12e

    .line 321
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "result send data: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12e
    .catch Ljava/net/HttpRetryException; {:try_start_115 .. :try_end_12e} :catch_13f
    .catchall {:try_start_115 .. :try_end_12e} :catchall_12f

    :cond_12e
    return v2

    :catchall_12f
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(Type:Throwable) "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v7

    :catch_13f
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/net/HttpRetryException;->responseCode()I

    move-result p1

    .line 328
    invoke-virtual {p0}, Ljava/net/HttpRetryException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(Type:HttpRetryException)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v7

    :cond_15b
    :goto_15b
    return v2
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "appops"

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 219
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android:get_usage_stats"

    .line 218
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    .line 395
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_4f

    .line 398
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "second"

    .line 399
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    return p0

    :cond_25
    const-string v1, "minute"

    .line 401
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    int-to-long p0, p0

    const-wide/32 v0, 0xea60

    :goto_31
    mul-long p0, p0, v0

    long-to-int p1, p0

    return p1

    :cond_35
    const-string v1, "hour"

    .line 403
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    int-to-long p0, p0

    const-wide/32 v0, 0x36ee80

    goto :goto_31

    :cond_42
    const-string v1, "day"

    .line 405
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4f

    if-eqz p1, :cond_4f

    int-to-long p0, p0

    const-wide/32 v0, 0x5265c00

    goto :goto_31

    :catchall_4f
    :cond_4f
    :goto_4f
    return v0
.end method

.method public static g(Landroid/content/Context;)V
    .registers 13

    .line 232
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/c/c;->as()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4c

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cdm"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 236
    new-instance v0, Lcom/appnext/base/a/b/c;

    const-string v4, "on"

    const-string v5, "1"

    const-string v6, "hour"

    const-string v7, "1"

    const-string v8, "interval"

    const-string v9, "cdm"

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/base/a/c/c;->a(Lcom/appnext/base/a/b/c;)J

    .line 238
    invoke-static {p0}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4c

    :catchall_4c
    :cond_4c
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x1

    .line 258
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :catchall_10
    :cond_10
    :goto_10
    return v0
.end method
