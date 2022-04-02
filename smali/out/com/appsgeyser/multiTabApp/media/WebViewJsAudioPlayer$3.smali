.class Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$3;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 107
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$3;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$3;->this$0:Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->access$300(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 p1, 0x0

    return p1
.end method
