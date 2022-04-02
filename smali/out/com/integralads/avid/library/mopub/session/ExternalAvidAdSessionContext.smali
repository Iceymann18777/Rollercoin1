.class public Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "ExternalAvidAdSessionContext.java"


# instance fields
.field private isDeferred:Z

.field private partnerVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->partnerVersion:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->isDeferred:Z

    return-void
.end method


# virtual methods
.method public getPartnerVersion()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->partnerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isDeferred()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->isDeferred:Z

    return v0
.end method
