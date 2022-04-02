.class final Lcom/mopub/common/CloseableLayout$UnsetPressedState;
.super Ljava/lang/Object;
.source "CloseableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/CloseableLayout;


# direct methods
.method private constructor <init>(Lcom/mopub/common/CloseableLayout;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout$UnsetPressedState;->this$0:Lcom/mopub/common/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/CloseableLayout;Lcom/mopub/common/CloseableLayout$1;)V
    .registers 3

    .line 300
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout$UnsetPressedState;-><init>(Lcom/mopub/common/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout$UnsetPressedState;->this$0:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/CloseableLayout;->access$100(Lcom/mopub/common/CloseableLayout;Z)V

    return-void
.end method
