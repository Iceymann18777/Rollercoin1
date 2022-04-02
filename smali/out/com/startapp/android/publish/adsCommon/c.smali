.class public Lcom/startapp/android/publish/adsCommon/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/c$a;
    }
.end annotation


# static fields
.field private static a:Landroid/app/ProgressDialog;


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 3

    const-string v0, "&"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 118
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 119
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/Ad$AdType;
    .registers 3

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 73
    instance-of p1, p0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eqz p1, :cond_11

    check-cast p0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 95
    :catch_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    nop

    :goto_21
    if-eqz v1, :cond_27

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_27
    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_b

    .line 866
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object p0, p1

    :cond_b
    const-string p1, "[?&]d="

    .line 867
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 869
    array-length p1, p0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_22

    const/4 p1, 0x1

    .line 870
    aget-object p0, p0, p1

    const-string p1, "[?&]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    move-object v0, p0

    :catch_22
    :cond_22
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 168
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    add-int/lit8 v2, v1, 0x5

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/startapp/android/publish/adsCommon/AdsConstants;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&isShown="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&appPresence="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    :cond_4e
    const-string v1, ""

    :goto_50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_6

    :cond_5c
    const/4 p0, 0x3

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "newUrlList size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 406
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 407
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;Z)V

    .line 414
    :cond_d
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 8

    const-string v0, "com.android.chrome"

    const-string v1, "com.android.browser"

    const-string v2, "com.opera.mini.native"

    const-string v3, "org.mozilla.firefox"

    const-string v4, "com.opera.browser"

    .line 724
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 733
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 734
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_41

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_21
    const/4 v2, 0x5

    if-ge v1, v2, :cond_41

    .line 736
    aget-object v2, v0, v1

    .line 737
    invoke-static {p0, v2, p2}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 738
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_33

    goto :goto_41

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :catch_33
    move-exception p1

    .line 744
    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdsCommonUtils.chooseDefaultBrowser"

    const-string v1, ""

    invoke-static {p0, p2, v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 6

    if-eqz p1, :cond_2d

    const-string v0, ""

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x3

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Impression: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    if-eqz p2, :cond_29

    .line 150
    invoke-virtual {p2, p0}, Lcom/startapp/android/publish/adsCommon/d/b;->setLocation(Landroid/content/Context;)V

    :cond_29
    const/4 v0, 0x1

    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    :cond_2d
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V
    .registers 6

    const-string v0, ""

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 274
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/c$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/c$1;-><init>(ZLandroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 689
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 750
    :try_start_0
    invoke-static {p1, p3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 751
    invoke-static {p0, p3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 752
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_10

    const/high16 v0, 0x10000000

    .line 753
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    :cond_10
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_3a

    :catch_14
    move-exception p3

    .line 757
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Util.openUrlExternally - Couldn\'t start activity"

    invoke-static {p0, v0, v1, p3, p2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x6

    .line 758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find activity to handle url: ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V
    .registers 12

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 180
    invoke-static {p0, p2, p3}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 182
    :cond_9
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapp/android/publish/adsCommon/m;->b()V

    const/4 p3, 0x0

    const-string v0, "]"

    const-string v1, "Cannot start activity to handle url: ["

    const/4 v2, 0x6

    if-nez p5, :cond_55

    .line 186
    :try_start_18
    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_55

    :catch_1d
    move-exception p5

    .line 188
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->g:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Util.clickWithoutSmartRedirect(): Couldn\'t extract dparams with clickUrl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and tacking click url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    .line 188
    invoke-static {p0, v3, v4, p5, p3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p5}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_55
    :goto_55
    const-string p5, "InAppBrowser"

    .line 195
    :try_start_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/c;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-static {p3}, Lcom/startapp/common/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6c

    :cond_6a
    const-string v4, ""

    :goto_6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/common/metaData/MetaData;->isInAppBrowser()Z

    move-result v3

    if-eqz v3, :cond_83

    if-eqz p4, :cond_83

    .line 197
    invoke-static {p0, p1, p3}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_83
    const-string p5, "externalBrowser"

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_b5

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->f(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_b5

    .line 202
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;)V

    .line 203
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p4, "forceExternal - click without - External"

    .line 204
    invoke-static {v2, p4}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 205
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceExternal - click without - trackingClickUrl : "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    goto :goto_e9

    .line 208
    :cond_b5
    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b8} :catch_b9

    goto :goto_e9

    :catch_b9
    move-exception p2

    .line 212
    sget-object p4, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util.clickWithoutSmartRedirect - Couldn\'t start activity for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p4, p5, p2, p3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_e9
    return-void
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/Boolean;Ljava/lang/Runnable;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p3

    .line 316
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.startapp.android.OnClickCallback"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-static/range {p0 .. p0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    .line 319
    invoke-static/range {p1 .. p1}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    if-eqz v0, :cond_54

    const-string v2, ""

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 321
    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->e:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Link: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Wrong package name reached"

    invoke-static {v1, v2, v3, v0, v15}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_54
    invoke-static {v1, v14, v15}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_5c

    .line 325
    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    :cond_5c
    return-void

    .line 331
    :cond_5d
    instance-of v2, v1, Landroid/app/Activity;

    const/4 v3, 0x1

    if-eqz v2, :cond_68

    .line 332
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;Z)V

    .line 337
    :cond_68
    :try_start_68
    new-instance v13, Landroid/webkit/WebView;

    invoke-direct {v13, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 338
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    if-nez v2, :cond_f2

    .line 339
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v2, v4, :cond_82

    .line 340
    new-instance v2, Landroid/app/ProgressDialog;

    const v4, 0x10302d1

    invoke-direct {v2, v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    goto :goto_89

    .line 342
    :cond_82
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    .line 345
    :goto_89
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    const-string v4, "Loading...."

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 348
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 349
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/startapp/android/publish/adsCommon/c$3;

    invoke-direct {v4, v13}, Lcom/startapp/android/publish/adsCommon/c$3;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 356
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_be

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_be

    .line 357
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_f2

    .line 358
    :cond_be
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_f2

    invoke-static/range {p0 .. p0}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 359
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_e2

    .line 360
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7f6

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_ed

    .line 362
    :cond_e2
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 364
    :goto_ed
    sget-object v2, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 368
    :cond_f2
    :goto_f2
    invoke-virtual {v13}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 369
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v13, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 370
    new-instance v12, Lcom/startapp/android/publish/adsCommon/c$a;

    sget-object v9, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    move-object v2, v12

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v0, v12

    move-object/from16 v12, p3

    move-object v1, v13

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/startapp/android/publish/adsCommon/c$a;-><init>(JJZLjava/lang/Boolean;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 371
    invoke-virtual {v1, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_121} :catch_122

    return-void

    :catch_122
    move-exception v0

    .line 374
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Util.smartRedirect - Webview failed"

    move-object/from16 v3, p0

    invoke-static {v3, v1, v2, v0, v15}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v3, v14, v15}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_138

    .line 377
    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    :cond_138
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;Z)V
    .registers 25

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 236
    invoke-static/range {v0 .. v12}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V
    .registers 25

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 243
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->C()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 245
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->b()V

    const/4 v4, 0x0

    if-nez p11, :cond_5b

    .line 249
    :try_start_17
    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1d

    move-object v4, v0

    goto :goto_5b

    :catch_1d
    move-exception v0

    move-object v5, v0

    .line 251
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->g:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Util.clickWithSmartRedirect(): Couldn\'t extract dparams with clickUrl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and tacking click url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {p0, v0, v6, v5, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start activity to handle url: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_5b
    :goto_5b
    const-string v0, ""

    if-eqz v3, :cond_6a

    .line 257
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    move-object/from16 v5, p4

    .line 258
    invoke-static {p0, p2, v5}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 260
    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-static {v4}, Lcom/startapp/common/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v11}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/Boolean;Ljava/lang/Runnable;)V

    goto :goto_a1

    :cond_93
    move-object/from16 v5, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p11

    .line 264
    invoke-static/range {v1 .. v6}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V

    :goto_a1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x4880000

    .line 698
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->G()Z

    move-result v1

    if-nez v1, :cond_13

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_15

    :cond_13
    const/high16 v0, 0x14880000

    .line 702
    :cond_15
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 703
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    invoke-static {p0, v1}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 708
    :try_start_29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_43

    .line 709
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/common/metaData/MetaData;->getChromeCustomeTabsExternal()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 710
    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_51

    :cond_43
    if-eqz p3, :cond_4a

    if-nez v2, :cond_4a

    .line 713
    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 716
    :cond_4a
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4d} :catch_4e

    goto :goto_51

    .line 719
    :catch_4e
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_51
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 5

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 158
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 159
    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    .line 127
    new-instance v0, Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/startapp/android/publish/adsCommon/d/b;->setOffset(I)Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/startapp/android/publish/adsCommon/d/b;->setNonImpressionReason(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object p2

    const-string p3, ""

    if-eqz p1, :cond_43

    .line 128
    array-length v0, p1

    if-eqz v0, :cond_43

    .line 129
    array-length p4, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, p4, :cond_4c

    aget-object v2, p1, v1

    if-eqz v2, :cond_40

    .line 130
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    const/4 v3, 0x3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Impression: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 132
    invoke-static {p0, v2, p2, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 136
    :cond_43
    sget-object p1, Lcom/startapp/android/publish/adsCommon/f/d;->l:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/d/b;->getProfileId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p4, p2, p3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V
    .registers 4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 8

    const/4 v0, 0x1

    .line 831
    invoke-static {p3, p2, p4, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    .line 833
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 p4, 0x6

    if-eqz p1, :cond_38

    .line 837
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 839
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 840
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_31} :catch_32

    goto :goto_18

    :catch_32
    move-exception p1

    const-string v0, "Couldn\'t parse intent details json!"

    .line 844
    invoke-static {p4, v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    :cond_38
    :try_start_38
    invoke-virtual {p3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_66

    :catch_3c
    move-exception p0

    const/4 p1, 0x0

    .line 851
    invoke-static {p2, p1}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 852
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util.handleCPEClick - Couldn\'t start activity"

    invoke-static {p3, v0, v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find activity to handle url: ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_66
    return-void
.end method

.method private static a(JJ)Z
    .registers 9

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1d

    const-wide/32 v1, 0x5265c00

    .line 967
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b;->L()I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, v1

    add-long/2addr p0, v3

    cmp-long v1, p0, p2

    if-gtz v1, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 6

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101020d

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 110
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 888
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 889
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/startapp/common/Constants;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 890
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_37
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z
    .registers 5

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceExternal - check -placement is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsCommonUtils"

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 948
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->M()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 949
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->f(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/startapp/android/publish/adsCommon/g;)[Ljava/lang/String;
    .registers 2

    .line 924
    instance-of v0, p0, Lcom/startapp/android/publish/adsCommon/e;

    if-eqz v0, :cond_b

    .line 925
    check-cast p0, Lcom/startapp/android/publish/adsCommon/e;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/e;->l()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 926
    :cond_b
    instance-of v0, p0, Lcom/startapp/android/publish/adsCommon/h;

    if-eqz v0, :cond_1a

    .line 927
    check-cast p0, Lcom/startapp/android/publish/adsCommon/h;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/h;->d()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1f

    .line 935
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 936
    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 939
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    .line 903
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 904
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x8

    const-string v3, "interstitial"

    if-ge v1, v2, :cond_4e

    .line 907
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "doHome"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    const-string v0, "home"

    return-object v0

    .line 909
    :cond_21
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onBackPressed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4b

    .line 910
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->f()Z

    move-result v0

    if-nez v0, :cond_41

    .line 911
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->p()Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    return-object v3

    .line 912
    :cond_41
    :goto_41
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->m()V

    const-string v0, "back"

    return-object v0

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_4e
    return-object v3
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "shared_prefs_CookieFeatureTS"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceExternal - write to sp - TS : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 298
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/c$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/c$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 4

    const/4 v0, 0x1

    .line 269
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 763
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "Util.OpenAsInAppBrowser - Couldn\'t start activity"

    if-eqz v0, :cond_16

    .line 764
    sget-object p1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v0, "Parameter clickUrl is null"

    invoke-static {p0, p1, v2, v0, p2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Cannot start activity, because url is null"

    .line 766
    invoke-static {v1, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-void

    .line 770
    :cond_16
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-wide/16 v3, 0x100

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_b3

    .line 776
    :cond_26
    :try_start_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_4c

    .line 777
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getChromeCustomeTabsInternal()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 778
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 779
    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/c;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    .line 783
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Util.OpenAsInAppBrowser - Couldn\'t openUrlChromeTabs"

    invoke-static {p0, v3, v4, v0, p2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_4c
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5e

    const/high16 v3, 0x80000

    .line 788
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    :cond_5e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6a

    const v3, 0x8000

    .line 791
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 793
    :cond_6a
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_73

    const/high16 v3, 0x10000000

    .line 794
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 796
    :cond_73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 797
    sget-object v3, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BROWSER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v3}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->getIndex()I

    move-result v3

    const-string v4, "placement"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "activityShouldLockOrientation"

    .line 798
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    :try_start_8b
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_b2

    :catch_8f
    move-exception v0

    .line 802
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v2, v0, p2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find activity to handle url: ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_b2
    return-void

    .line 771
    :cond_b3
    :goto_b3
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "market"

    .line 392
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "http://play.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "https://play.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 685
    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 386
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 388
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "intent://"

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 6

    .line 418
    sget-object v0, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_33

    .line 419
    monitor-enter v0

    .line 420
    :try_start_5
    sget-object v1, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_30

    if-eqz v1, :cond_2e

    .line 422
    :try_start_11
    sget-object v1, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_30

    goto :goto_2b

    :catch_17
    move-exception v1

    const/4 v2, 0x6

    :try_start_19
    const-string v3, "Error while cancelling progress"

    .line 424
    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v3, "AdsCommonUtils.cancelProgress - progress.cancel() failed"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {p0, v2, v3, v1, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    const/4 p0, 0x0

    .line 427
    sput-object p0, Lcom/startapp/android/publish/adsCommon/c;->a:Landroid/app/ProgressDialog;

    .line 429
    :cond_2e
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 810
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 811
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    const/4 v2, 0x0

    .line 812
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "http://"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 858
    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 818
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "chromeTabs"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 5

    .line 955
    invoke-static {}, Lcom/startapp/common/a/b;->a()Lcom/startapp/common/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/common/a/b;->a(Landroid/content/Context;)Lcom/startapp/common/a/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/common/a/b$c;->b()Z

    move-result v0

    if-nez v0, :cond_32

    const-wide/16 v0, 0x0

    .line 956
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "shared_prefs_CookieFeatureTS"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x6

    const-string v0, "AdsCommonUtils"

    const-string v1, "forceExternal - check - true "

    .line 957
    invoke-static {v0, p0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 2

    .line 218
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->D()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&cki=1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
