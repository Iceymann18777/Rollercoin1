.class Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_setPlayerEvenets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$000(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$000(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 92
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$000(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$100(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    :cond_1e
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
