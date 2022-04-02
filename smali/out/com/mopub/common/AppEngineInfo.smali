.class public final Lcom/mopub/common/AppEngineInfo;
.super Ljava/lang/Object;
.source "AppEngineInfo.java"


# instance fields
.field final mName:Ljava/lang/String;

.field final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/common/AppEngineInfo;->mName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/mopub/common/AppEngineInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
