.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->setWallpaper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V
    .registers 3

    .line 288
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 291
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 293
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 297
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    :try_start_1b
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1, v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$500(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Landroid/graphics/Bitmap;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    :goto_25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_28
    return-void
.end method
