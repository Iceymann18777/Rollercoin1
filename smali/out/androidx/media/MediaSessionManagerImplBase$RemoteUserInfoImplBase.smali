.class Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaSessionManagerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteUserInfoImplBase"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    .line 123
    iput p2, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    .line 124
    iput p3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 150
    :cond_a
    check-cast p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    .line 151
    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2f

    iget v1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    if-ne v1, v3, :cond_16

    goto :goto_2f

    .line 156
    :cond_16
    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    iget v3, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    iget p1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    if-ne v1, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    .line 153
    :cond_2f
    :goto_2f
    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    iget p1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    if-ne v1, p1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
