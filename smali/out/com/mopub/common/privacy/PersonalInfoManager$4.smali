.class Lcom/mopub/common/privacy/PersonalInfoManager$4;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;->fireOnConsentStateChangeListeners(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

.field final synthetic val$canCollectPersonalInformation:Z

.field final synthetic val$newConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field final synthetic val$oldConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field final synthetic val$stateChangeListener:Lcom/mopub/common/privacy/ConsentStatusChangeListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .registers 6

    .line 593
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    iput-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$stateChangeListener:Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$oldConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    iput-object p4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$newConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    iput-boolean p5, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$canCollectPersonalInformation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 596
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$stateChangeListener:Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$oldConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$newConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    iget-boolean v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager$4;->val$canCollectPersonalInformation:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/mopub/common/privacy/ConsentStatusChangeListener;->onConsentStateChange(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method
