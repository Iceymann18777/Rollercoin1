.class public abstract Lcom/appnext/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/d$a;
    }
.end annotation


# static fields
.field private static final fP:I = 0x32


# instance fields
.field protected final fQ:I

.field protected final fR:I

.field protected final fS:I

.field protected final fT:I

.field private final fU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/appnext/core/b;",
            "Lcom/appnext/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/appnext/core/d;->fQ:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/appnext/core/d;->fR:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/appnext/core/d;->fS:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/appnext/core/d;->fT:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    return-void
.end method

.method protected static P(Ljava/lang/String;)Z
    .registers 2

    .line 448
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const-string p0, "rnd"

    .line 452
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_c
    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/appnext/core/Ad;Ljava/lang/String;)J
    .registers 3

    .line 326
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private static a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;
    .registers 4

    .line 424
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 425
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getRevenueRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getRevenueRate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    return-object p1

    :cond_23
    return-object p0

    .line 430
    :cond_24
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    return-object p0

    :cond_31
    return-object p1
.end method

.method static synthetic a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6

    .line 4130
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "https://global.appnext.com/offerWallApi.aspx?ext=t&pimp=1&igroup=sdk&m=1&osid=100&s2s=1&type=json&id="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cnt=50"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&tid="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    .line 4134
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object p3

    goto :goto_1d

    :cond_1b
    const-string p3, "301"

    :goto_1d
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&vid="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2c

    .line 4135
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object p3

    goto :goto_2e

    :cond_2c
    const-string p3, "2.5.1.472"

    :goto_2e
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cat="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    if-eqz p2, :cond_3f

    .line 4136
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_3f
    move-object v0, p3

    :goto_40
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pbk="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4f

    .line 4137
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_4f
    move-object v0, p3

    :goto_50
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&did="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4138
    invoke-virtual {p0, p2}, Lcom/appnext/core/d;->c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;

    move-result-object p0

    const-string p2, "didPrivacy"

    invoke-virtual {p0, p2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&devn="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4139
    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&dosv="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&dct="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    invoke-static {p1}, Lcom/appnext/core/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appnext/core/f;->Z(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&lang="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 4142
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&dcc="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "phone"

    .line 5816
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 5817
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d9

    .line 5818
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 5819
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4143
    :cond_d9
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&dds=0"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&packageId="

    .line 4144
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&g="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4146
    invoke-static {p1}, Lcom/appnext/core/d;->j(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&rnd="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 4147
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/core/d;)Ljava/util/HashMap;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
    .registers 6

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/appnext/core/d;->b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 568
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appnext/core/j;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static aV()I
    .registers 1

    const/16 v0, 0x1f40

    return v0
.end method

.method private static b(Ljava/util/ArrayList;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Lcom/appnext/core/AppnextAd;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    .line 439
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "https://global.appnext.com/offerWallApi.aspx?ext=t&pimp=1&igroup=sdk&m=1&osid=100&s2s=1&type=json&id="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cnt=50"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&tid="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    .line 134
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object p3

    goto :goto_1d

    :cond_1b
    const-string p3, "301"

    :goto_1d
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&vid="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2c

    .line 135
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object p3

    goto :goto_2e

    :cond_2c
    const-string p3, "2.5.1.472"

    :goto_2e
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cat="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    if-eqz p2, :cond_3f

    .line 136
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_3f
    move-object v0, p3

    :goto_40
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pbk="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4f

    .line 137
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_4f
    move-object v0, p3

    :goto_50
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&did="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0, p2}, Lcom/appnext/core/d;->c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;

    move-result-object p2

    const-string v0, "didPrivacy"

    invoke-virtual {p2, v0}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&devn="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dosv="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&dct="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1}, Lcom/appnext/core/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appnext/core/f;->Z(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&lang="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dcc="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "phone"

    .line 2816
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 2817
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d9

    .line 2818
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    .line 2819
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 143
    :cond_d9
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dds=0"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&packageId="

    .line 144
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&g="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {p1}, Lcom/appnext/core/d;->j(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&rnd="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 147
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
    .registers 14

    .line 151
    new-instance v7, Lcom/appnext/core/d$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/appnext/core/d$2;-><init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Landroid/content/Context;Lcom/appnext/core/d$a;Ljava/lang/String;Z)V

    .line 269
    invoke-virtual {v7}, Lcom/appnext/core/d$2;->start()V

    return-void
.end method

.method public static d(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;
    .registers 1

    .line 511
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getAdJSON()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static j(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x2

    :try_start_1
    const-string v1, "android.permission.READ_CONTACTS"

    .line 582
    invoke-static {p0, v1}, Lcom/appnext/core/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 583
    invoke-static {p0, v1}, Lcom/appnext/core/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 584
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_22

    if-lez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0

    :catchall_22
    :cond_22
    return v0
.end method

.method public static parseAd(Ljava/lang/String;)Lcom/appnext/core/g;
    .registers 4

    const-string v0, "sid"

    .line 520
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 522
    const-class p0, Lcom/appnext/core/AppnextAd;

    invoke-static {p0, v1}, Lcom/appnext/core/l;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/core/AppnextAd;

    if-eqz p0, :cond_36

    .line 524
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appnext/core/AppnextAd;->setAdJSON(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 526
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/AppnextAd;->setSession(Ljava/lang/String;)V

    .line 529
    :cond_25
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "0"

    .line 530
    invoke-virtual {p0, v0}, Lcom/appnext/core/AppnextAd;->setStoreRating(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_37

    :cond_36
    return-object p0

    :catchall_37
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/appnext/core/g;)I
.end method

.method protected abstract a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 457
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 458
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/AppnextAd;

    .line 459
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getAdJSON()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 461
    :cond_22
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apps"

    .line 462
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u2028"

    const-string v1, "\\u2028"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u2029"

    const-string v1, "\\u2029"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    return-object p1

    :catchall_41
    const-string p1, ""

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/appnext/core/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0, p2}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/appnext/core/a;->N(Ljava/lang/String;)V

    .line 338
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "apps"

    .line 347
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 348
    :goto_21
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_b6

    .line 349
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 352
    :try_start_2b
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appnext/core/d;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object v6

    check-cast v6, Lcom/appnext/core/AppnextAd;

    .line 353
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/appnext/core/AppnextAd;->setAdID(I)V

    .line 354
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appnext/core/AppnextAd;->setPlacementID(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, p1, v6}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/g;)I

    move-result v7

    if-nez v7, :cond_8b

    .line 359
    invoke-static {p4, v6}, Lcom/appnext/core/d;->b(Ljava/util/ArrayList;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;

    move-result-object v7

    if-eqz v7, :cond_85

    .line 361
    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3424
    invoke-virtual {v7}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 3425
    invoke-virtual {v7}, Lcom/appnext/core/AppnextAd;->getRevenueRate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v6}, Lcom/appnext/core/AppnextAd;->getRevenueRate()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_82

    goto :goto_81

    .line 3430
    :cond_75
    invoke-virtual {v7}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    :goto_81
    move-object v6, v7

    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_85
    add-int/lit8 v2, v2, 0x1

    .line 368
    :goto_87
    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 370
    :cond_8b
    invoke-virtual {v6}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-eq v7, v6, :cond_a7

    const/4 v6, 0x2

    if-eq v7, v6, :cond_a4

    const/4 v6, 0x3

    if-eq v7, v6, :cond_a1

    goto :goto_a9

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    :cond_a7
    add-int/lit8 v3, v3, 0x1

    .line 385
    :goto_a9
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_ad
    .catchall {:try_start_2b .. :try_end_ad} :catchall_b2

    const/16 v7, 0x32

    if-ne v6, v7, :cond_b2

    goto :goto_b6

    :catchall_b2
    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 393
    :cond_b6
    :goto_b6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Filtering values {count = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", new filtered = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", existing  filtered = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",  other = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/appnext/core/d$3;

    invoke-direct {p3, p0, v0, p1}, Lcom/appnext/core/d$3;-><init>(Lcom/appnext/core/d;Ljava/lang/StringBuilder;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 419
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p4
.end method

.method protected abstract a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
    .registers 15

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/appnext/core/d$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/appnext/core/d$1;-><init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Landroid/content/Context;Lcom/appnext/core/d$a;Ljava/lang/String;Z)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final a(Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .registers 5

    .line 507
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    new-instance v1, Lcom/appnext/core/b;

    invoke-direct {v1, p1}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract a(Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;Lcom/appnext/core/Ad;)V
    .registers 4

    .line 576
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/appnext/core/j;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/appnext/core/Ad;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V
    .registers 5

    const/4 v0, 0x2

    .line 476
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V
    .registers 13

    .line 480
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/d$4;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/appnext/core/d$4;-><init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "*>;)Z"
        }
    .end annotation
.end method

.method protected a(Lcom/appnext/core/Ad;)Z
    .registers 4

    const/4 v0, 0x0

    .line 281
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->h(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->i(Lcom/appnext/core/Ad;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :catchall_f
    :cond_f
    return v0
.end method

.method protected final aW()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/appnext/core/b;",
            "Lcom/appnext/core/a;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;Lcom/appnext/core/Ad;)V
    .registers 4

    const-string v0, ""

    .line 472
    invoke-virtual {p0, p1, v0, p2}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method

.method protected abstract c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;
.end method

.method public final c(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)V
    .registers 12

    .line 332
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    new-instance v1, Lcom/appnext/core/b;

    invoke-direct {v1, p2}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 333
    invoke-direct/range {v2 .. v7}, Lcom/appnext/core/d;->b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    return-void
.end method

.method protected final h(Lcom/appnext/core/Ad;)Z
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    if-eqz v0, :cond_21

    .line 290
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 291
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 292
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method protected final i(Lcom/appnext/core/Ad;)Z
    .registers 9

    .line 296
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_3e

    .line 297
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    if-eqz v0, :cond_3d

    .line 298
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 299
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3d

    .line 300
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->aU()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_3d

    return v2

    :cond_3d
    return v3

    .line 305
    :cond_3e
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    if-eqz v0, :cond_62

    .line 306
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 307
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->aU()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_62

    return v2

    :cond_62
    return v3
.end method

.method protected final j(Lcom/appnext/core/Ad;)J
    .registers 8

    const-string v0, "ads_caching_time_minutes"

    const-string v1, "_cachingRequest"

    const-wide/32 v2, 0xea60

    .line 315
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    invoke-direct {p0, p1, v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0

    :cond_18
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, p1, v1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21

    mul-long v0, v0, v4

    return-wide v0

    .line 317
    :catchall_21
    invoke-direct {p0, p1, v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method protected final k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/appnext/core/d;->fU:Ljava/util/HashMap;

    new-instance v1, Lcom/appnext/core/b;

    invoke-direct {v1, p1}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/a;

    return-object p1
.end method

.method public final l(Lcom/appnext/core/Ad;)Ljava/lang/String;
    .registers 2

    .line 515
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->A()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected l(Ljava/lang/String;)V
    .registers 3

    .line 572
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/j;->ab(Ljava/lang/String;)V

    return-void
.end method
