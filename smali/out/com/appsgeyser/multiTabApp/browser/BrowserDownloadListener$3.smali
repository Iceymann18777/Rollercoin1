.class Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

.field final synthetic val$contentDisposition:Ljava/lang/String;

.field final synthetic val$finalMimeType:Ljava/lang/String;

.field final synthetic val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 6

    .line 104
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$finalMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$contentDisposition:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Integer;)V
    .registers 11

    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_33

    .line 108
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$finalMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$contentDisposition:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 109
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$contentDisposition:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$finalMimeType:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$url:Ljava/lang/String;

    move-wide v6, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->access$100(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v8, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$url:Ljava/lang/String;

    move-wide v5, v0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->access$200(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 113
    :cond_33
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v0, 0x7f12008e

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_40
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 104
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;->onReceiveValue(Ljava/lang/Integer;)V

    return-void
.end method
