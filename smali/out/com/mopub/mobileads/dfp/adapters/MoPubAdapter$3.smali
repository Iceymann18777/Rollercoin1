.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->initSdkListener()Lcom/mopub/common/SdkInitializationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .registers 2

    const-string v0, "MoPub SDK initialized."

    .line 530
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void
.end method
