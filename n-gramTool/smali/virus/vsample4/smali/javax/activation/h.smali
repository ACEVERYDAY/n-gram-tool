.class public Ljavax/activation/h;
.super Ljava/lang/Object;
.source "DSN: got recipientDSN"

# interfaces
.implements Lmyjava/awt/datatransfer/Transferable;


# static fields
.field private static final emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

.field private static factory:Ljavax/activation/DataContentHandlerFactory;


# instance fields
.field private currentCommandMap:Ljavax/activation/CommandMap;

.field private dataContentHandler:Ljavax/activation/DataContentHandler;

.field private dataSource:Ljavax/activation/DataSource;

.field private factoryDCH:Ljavax/activation/DataContentHandler;

.field private objDataSource:Ljavax/activation/DataSource;

.field private object:Ljava/lang/Object;

.field private objectMimeType:Ljava/lang/String;

.field private oldFactory:Ljavax/activation/DataContentHandlerFactory;

.field private shortType:Ljava/lang/String;

.field private transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    sput-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iput-object p2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

