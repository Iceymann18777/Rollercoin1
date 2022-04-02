.class Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 78
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$contentDisposition:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$finalMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 81
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$contentDisposition:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$finalMimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    return-void
.end method
