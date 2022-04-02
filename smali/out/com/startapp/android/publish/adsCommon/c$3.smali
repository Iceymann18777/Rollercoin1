.class final Lcom/startapp/android/publish/adsCommon/c$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/Boolean;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$3;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 352
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$3;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
