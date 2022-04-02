.class Lcom/appsgeyser/sdk/server/network/NetworkManager$7;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$7;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method
