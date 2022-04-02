.class Lcom/startapp/android/publish/cache/a$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

.field b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field c:Lcom/startapp/android/publish/common/model/AdPreferences;

.field d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

.field final synthetic e:Lcom/startapp/android/publish/cache/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/cache/a;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 6

    .line 73
    iput-object p1, p0, Lcom/startapp/android/publish/cache/a$a;->e:Lcom/startapp/android/publish/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/startapp/android/publish/cache/a$a;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    .line 75
    iput-object p3, p0, Lcom/startapp/android/publish/cache/a$a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 76
    iput-object p4, p0, Lcom/startapp/android/publish/cache/a$a;->c:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 77
    iput-object p5, p0, Lcom/startapp/android/publish/cache/a$a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    return-void
.end method
