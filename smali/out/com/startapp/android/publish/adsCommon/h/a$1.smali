.class Lcom/startapp/android/publish/adsCommon/h/a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/h/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/h/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/h/a;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/h/a$1;->a:Lcom/startapp/android/publish/adsCommon/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h/a$1;->a:Lcom/startapp/android/publish/adsCommon/h/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/h/a;->b()V

    return-void
.end method
