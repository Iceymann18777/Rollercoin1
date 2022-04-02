.class Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 98
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 101
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$200(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$200(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_24

    .line 102
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$200(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$100(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_24
    return-void
.end method
