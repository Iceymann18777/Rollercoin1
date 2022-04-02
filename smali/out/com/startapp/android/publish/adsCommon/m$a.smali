.class Lcom/startapp/android/publish/adsCommon/m$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/adsCommon/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lcom/startapp/android/publish/adsCommon/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;-><init>(Lcom/startapp/android/publish/adsCommon/m$1;)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/m$a;->a:Lcom/startapp/android/publish/adsCommon/m;

    return-void
.end method

.method static synthetic a()Lcom/startapp/android/publish/adsCommon/m;
    .registers 1

    .line 86
    sget-object v0, Lcom/startapp/android/publish/adsCommon/m$a;->a:Lcom/startapp/android/publish/adsCommon/m;

    return-object v0
.end method
