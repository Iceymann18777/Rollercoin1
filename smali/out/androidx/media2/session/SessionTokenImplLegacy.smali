.class final Landroidx/media2/session/SessionTokenImplLegacy;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionTokenImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mExtras:Landroid/os/Bundle;

.field private mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field mLegacyTokenBundle:Landroid/os/Bundle;

.field mPackageName:Ljava/lang/String;

.field mType:I

.field mUid:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 108
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 111
    :cond_6
    check-cast p1, Landroidx/media2/session/SessionTokenImplLegacy;

    .line 112
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    const/16 v2, 0x64

    if-eq v0, v2, :cond_21

    const/16 v2, 0x65

    if-eq v0, v2, :cond_18

    return v1

    .line 119
    :cond_18
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 117
    :cond_21
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onPostParceling()V
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 4

    .line 178
    iget-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    .line 185
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 189
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    .line 192
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    goto :goto_1e

    .line 194
    :cond_1c
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    :goto_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {legacyToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
