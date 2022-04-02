.class Lcom/startapp/android/publish/inappbrowser/a$1;
.super Landroid/webkit/WebChromeClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/inappbrowser/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/inappbrowser/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/inappbrowser/a;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$1;->a:Lcom/startapp/android/publish/inappbrowser/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 149
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$1;->a:Lcom/startapp/android/publish/inappbrowser/a;

    iget-object p1, p1, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setProgress(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_15

    const-string p1, ""

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 155
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$1;->a:Lcom/startapp/android/publish/inappbrowser/a;

    iget-object p1, p1, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/b;->getTitleTxt()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method
