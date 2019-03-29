.class public abstract Ljavax/mail/l;
.super Ljava/lang/Object;
.source "Invalid FlagTerm"


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;

.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile messageChangedListeners:Ljava/util/Vector;

.field private volatile messageCountListeners:Ljava/util/Vector;

.field protected mode:I

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    iput-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    iput-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    iput-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    iput-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-void
.end method

