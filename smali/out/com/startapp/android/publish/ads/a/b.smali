.class public abstract Lcom/startapp/android/publish/ads/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field protected a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

.field protected b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field protected c:Z

.field private d:Landroid/content/Intent;

.field private e:Landroid/app/Activity;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:[Ljava/lang/String;

.field private h:[Z

.field private i:[Z

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:Lcom/startapp/android/publish/adsCommon/Ad;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/startapp/android/publish/adsCommon/adinformation/c;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Long;

.field private t:[Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    .line 36
    new-instance v1, Lcom/startapp/android/publish/ads/a/b$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b$1;-><init>(Lcom/startapp/android/publish/ads/a/b;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/a/b;->f:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    .line 44
    iput-object v2, p0, Lcom/startapp/android/publish/ads/a/b;->i:[Z

    .line 56
    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->t:[Ljava/lang/Boolean;

    .line 59
    iput-boolean v3, p0, Lcom/startapp/android/publish/ads/a/b;->c:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/ads/a/b;
    .registers 9

    .line 64
    sget-object v0, Lcom/startapp/android/publish/ads/a/b$3;->a:[I

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_174

    .line 97
    new-instance v1, Lcom/startapp/android/publish/ads/a/a;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/a/a;-><init>()V

    goto :goto_79

    :pswitch_13
    const-wide/16 v3, 0x100

    .line 87
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_22

    return-object v1

    .line 92
    :cond_22
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/startapp/android/publish/inappbrowser/a;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/inappbrowser/a;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :pswitch_2c
    const-wide/16 v3, 0x8

    .line 81
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 82
    new-instance v1, Lcom/startapp/android/publish/ads/splash/g;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/splash/g;-><init>()V

    goto :goto_79

    :pswitch_3a
    const-wide/16 v0, 0x4

    .line 72
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "videoAd"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 73
    new-instance v1, Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/video/f;-><init>()V

    goto :goto_79

    :cond_50
    const-string v0, "mraidAd"

    .line 74
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 75
    new-instance v1, Lcom/startapp/android/publish/ads/a/d;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/a/d;-><init>()V

    goto :goto_79

    .line 77
    :cond_5e
    new-instance v1, Lcom/startapp/android/publish/ads/a/f;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/a/f;-><init>()V

    goto :goto_79

    :pswitch_64
    const-wide/16 v3, 0x80

    .line 66
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_74

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 67
    :cond_74
    new-instance v1, Lcom/startapp/android/publish/ads/a/e;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/a/e;-><init>()V

    .line 101
    :cond_79
    :goto_79
    invoke-direct {v1, p1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/content/Intent;)V

    .line 102
    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/app/Activity;)V

    const-string p0, "position"

    .line 103
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->c(Ljava/lang/String;)V

    const-string p0, "tracking"

    .line 104
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->b([Ljava/lang/String;)V

    const-string p0, "trackingClickUrl"

    .line 105
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->c([Ljava/lang/String;)V

    const-string p0, "packageNames"

    .line 106
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->d([Ljava/lang/String;)V

    const-string p0, "closingUrl"

    .line 107
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a([Ljava/lang/String;)V

    const-string v0, "smartRedirect"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a([Z)V

    const-string v0, "browserEnabled"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->b([Z)V

    const-string v0, "htmlUuid"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 112
    sget-object v3, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 113
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/cache/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a(Ljava/lang/String;)V

    goto :goto_e5

    .line 115
    :cond_da
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/cache/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a(Ljava/lang/String;)V

    :cond_e5
    :goto_e5
    const-string v0, "isSplash"

    .line 118
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a(Z)V

    const-string v0, "adInfoOverride"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/adinformation/c;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a(Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    const-string v0, "adTag"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/ads/a/b;->b(Ljava/lang/String;)V

    .line 121
    invoke-direct {v1, p2}, Lcom/startapp/android/publish/ads/a/b;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 122
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a([Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/a/b;->d()[Z

    move-result-object p0

    const/4 p2, 0x1

    if-nez p0, :cond_11a

    new-array p0, p2, [Z

    aput-boolean p2, p0, v2

    .line 124
    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a([Z)V

    .line 126
    :cond_11a
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/a/b;->e()[Z

    move-result-object p0

    if-nez p0, :cond_127

    new-array p0, p2, [Z

    aput-boolean p2, p0, v2

    .line 127
    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->b([Z)V

    :cond_127
    const-string p0, "ad"

    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a(Lcom/startapp/android/publish/adsCommon/Ad;)V

    const-string p0, "delayImpressionSeconds"

    const-wide/16 v2, -0x1

    .line 132
    invoke-virtual {p1, p0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-eqz p0, :cond_145

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a(Ljava/lang/Long;)V

    :cond_145
    const-string p0, "sendRedirectHops"

    .line 137
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Boolean;

    check-cast p0, [Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/ads/a/b;->a([Ljava/lang/Boolean;)V

    const/4 p0, 0x3

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Placement=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/a/b;->k()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenericMode"

    invoke-static {p2, p0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_64
        :pswitch_3a
        :pswitch_3a
        :pswitch_2c
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->e:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->d:Landroid/content/Intent;

    return-void
.end method

.method private a(Lcom/startapp/android/publish/adsCommon/adinformation/c;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->q:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    return-void
.end method

.method private a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->s:Ljava/lang/Long;

    return-void
.end method

.method private a(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/a/b;->p:Z

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->g:[Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->r:Ljava/lang/String;

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->k:[Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method private c([Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->l:[Ljava/lang/String;

    return-void
.end method

.method private d([Ljava/lang/String;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->m:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    .line 315
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.startapp.android.CloseAdActivity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .registers 7

    .line 269
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adinformation/b$b;->b:Lcom/startapp/android/publish/adsCommon/adinformation/b$b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->k()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->m()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/adinformation/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    .line 270
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->n:Lcom/startapp/android/publish/adsCommon/Ad;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->o:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/Boolean;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->t:[Ljava/lang/Boolean;

    return-void
.end method

.method protected a([Z)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->h:[Z

    return-void
.end method

.method protected a(I)Z
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->i:[Z

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 227
    aget-boolean p1, v0, p1

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/app/Activity;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public b(I)Ljava/lang/Boolean;
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->t:[Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 287
    aget-object p1, v0, p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected b([Z)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/b;->i:[Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/b;->c:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected d()[Z
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->h:[Z

    return-object v0
.end method

.method public e()[Z
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->i:[Z

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected h()[Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->k:[Ljava/lang/String;

    return-object v0
.end method

.method protected i()[Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->l:[Ljava/lang/String;

    return-object v0
.end method

.method protected j()[Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->m:[Ljava/lang/String;

    return-object v0
.end method

.method protected k()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method

.method protected l()[Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->g:[Ljava/lang/String;

    return-object v0
.end method

.method protected m()Lcom/startapp/android/publish/adsCommon/adinformation/c;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->q:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->s:Ljava/lang/Long;

    return-object v0
.end method

.method public p()V
    .registers 3

    .line 298
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/a/b$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/b$2;-><init>(Lcom/startapp/android/publish/ads/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()V
    .registers 3

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.HideDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .registers 1

    .line 328
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->p()V

    return-void
.end method

.method public t()V
    .registers 1

    return-void
.end method

.method public abstract u()V
.end method

.method public v()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_11

    .line 345
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/b;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;)V

    :cond_11
    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public w()Lcom/startapp/android/publish/adsCommon/Ad;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/b;->n:Lcom/startapp/android/publish/adsCommon/Ad;

    return-object v0
.end method
