.class Lcom/startapp/android/publish/adsCommon/adinformation/b$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/adinformation/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/adinformation/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/adinformation/b;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$4;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$4;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/adinformation/b;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$4;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
