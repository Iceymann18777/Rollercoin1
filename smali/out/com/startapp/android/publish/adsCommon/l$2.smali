.class final Lcom/startapp/android/publish/adsCommon/l$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/common/metaData/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/l$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 97
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/l;->b()V

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/l$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
