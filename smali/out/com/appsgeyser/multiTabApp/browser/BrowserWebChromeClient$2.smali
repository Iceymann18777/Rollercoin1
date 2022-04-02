.class Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;
.super Ljava/lang/Object;
.source "BrowserWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/JsResult;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 127
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
