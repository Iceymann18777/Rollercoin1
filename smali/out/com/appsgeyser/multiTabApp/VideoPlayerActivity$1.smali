.class Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 42
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->access$000(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 44
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 48
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->finish()V

    :cond_30
    const/4 p1, 0x0

    return p1
.end method
