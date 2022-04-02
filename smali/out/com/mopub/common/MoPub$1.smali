.class final Lcom/mopub/common/MoPub$1;
.super Ljava/lang/Object;
.source "MoPub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/MoPub;->initializationFinished(Lcom/mopub/common/SdkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/SdkInitializationListener;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/mopub/common/MoPub$1;->val$sdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/mopub/common/MoPub$1;->val$sdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_7

    .line 383
    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    :cond_7
    return-void
.end method
