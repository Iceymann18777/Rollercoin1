.class Lcom/startapp/android/publish/inappbrowser/a$a;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/inappbrowser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/startapp/android/publish/inappbrowser/a;

.field private c:Lcom/startapp/android/publish/inappbrowser/b;

.field private d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/inappbrowser/b;Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;Lcom/startapp/android/publish/inappbrowser/a;)V
    .registers 6

    .line 187
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 185
    iput-boolean v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->f:Z

    .line 188
    iput-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->a:Landroid/content/Context;

    .line 189
    iput-object p3, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    .line 190
    iput-object p2, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    .line 191
    iput-object p4, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->b:Lcom/startapp/android/publish/inappbrowser/a;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 258
    sget-boolean v0, Lcom/startapp/android/publish/inappbrowser/a;->j:Z

    if-nez v0, :cond_4c

    const/4 v0, 0x3

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IABWebViewClient::onPageFinished - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IABrowserMode"

    invoke-static {v2, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/inappbrowser/b;->a(Landroid/webkit/WebView;)V

    .line 263
    iget v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    if-nez v0, :cond_49

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->f:Z

    .line 266
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 267
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 268
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setVisibility(I)V

    .line 271
    :cond_44
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/inappbrowser/b;->a(Landroid/webkit/WebView;)V

    .line 273
    :cond_49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 196
    sget-boolean v0, Lcom/startapp/android/publish/inappbrowser/a;->j:Z

    if-nez v0, :cond_67

    const/4 v0, 0x3

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IABWebViewClient::onPageStarted - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "REDIRECTED  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Can go back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IABrowserMode"

    .line 197
    invoke-static {v2, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    .line 202
    iput v1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 203
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 204
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/inappbrowser/b;->a(Landroid/webkit/WebView;)V

    goto :goto_50

    .line 207
    :cond_48
    iget v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 209
    :goto_50
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/b;->getUrlTxt()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->c:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/inappbrowser/b;->a(Landroid/webkit/WebView;)V

    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_67
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IABWebViewClient::onReceivedError - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IABrowserMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IABWebViewClient::shouldOverrideUrlLoading - ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IABrowserMode"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    sget-boolean p1, Lcom/startapp/android/publish/inappbrowser/a;->j:Z

    const/4 v0, 0x1

    if-nez p1, :cond_50

    .line 224
    iget-boolean p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->f:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2f

    .line 225
    iput-boolean v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->f:Z

    .line 226
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->d:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 227
    iput v1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 229
    :cond_2f
    iget p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 232
    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 234
    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    return v1

    .line 236
    :cond_42
    :goto_42
    iput v0, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->e:I

    .line 240
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a$a;->b:Lcom/startapp/android/publish/inappbrowser/a;

    if-eqz p1, :cond_50

    .line 245
    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/a;->x()V

    :cond_50
    return v0
.end method
