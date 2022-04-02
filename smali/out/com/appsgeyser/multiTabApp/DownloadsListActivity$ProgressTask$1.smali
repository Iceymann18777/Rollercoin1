.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;
.super Ljava/lang/Object;
.source "DownloadsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;->this$1:Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;->this$1:Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$500(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
