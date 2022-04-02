.class Lcom/mopub/common/CompositeSdkInitializationListener$1;
.super Ljava/lang/Object;
.source "CompositeSdkInitializationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/CompositeSdkInitializationListener;->onInitializationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/CompositeSdkInitializationListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/CompositeSdkInitializationListener;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/mopub/common/CompositeSdkInitializationListener$1;->this$0:Lcom/mopub/common/CompositeSdkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener$1;->this$0:Lcom/mopub/common/CompositeSdkInitializationListener;

    invoke-static {v0}, Lcom/mopub/common/CompositeSdkInitializationListener;->access$000(Lcom/mopub/common/CompositeSdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 44
    iget-object v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener$1;->this$0:Lcom/mopub/common/CompositeSdkInitializationListener;

    invoke-static {v0}, Lcom/mopub/common/CompositeSdkInitializationListener;->access$000(Lcom/mopub/common/CompositeSdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 45
    iget-object v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener$1;->this$0:Lcom/mopub/common/CompositeSdkInitializationListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/CompositeSdkInitializationListener;->access$002(Lcom/mopub/common/CompositeSdkInitializationListener;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_17
    return-void
.end method
