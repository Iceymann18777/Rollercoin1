.class public Lcom/mopub/mobileads/VastTracker;
.super Ljava/lang/Object;
.source "VastTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastTracker$MessageType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCalled:Z

.field private final mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private mIsRepeatable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_repeatable"
    .end annotation
.end field

.field private final mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;

    .line 41
    iput-object p2, p0, Lcom/mopub/mobileads/VastTracker;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 46
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/VastTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 51
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastTracker;->mIsRepeatable:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mIsRepeatable:Z

    return v0
.end method

.method public isTracked()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mCalled:Z

    return v0
.end method

.method public setTracked()V
    .registers 2

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mCalled:Z

    return-void
.end method
