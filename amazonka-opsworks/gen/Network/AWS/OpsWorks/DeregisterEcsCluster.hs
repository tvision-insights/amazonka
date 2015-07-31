{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.DeregisterEcsCluster
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deregisters a specified Amazon ECS cluster from a stack. For more
-- information, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete Resource Management>.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Manage permissions level for the stack or an attached policy that
-- explicitly grants permissions. For more information on user permissions,
-- see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html >.
--
-- <http://docs.aws.amazon.com/opsworks/latest/APIReference/API_DeregisterEcsCluster.html>
module Network.AWS.OpsWorks.DeregisterEcsCluster
    (
    -- * Request
      DeregisterEcsCluster
    -- ** Request constructor
    , deregisterEcsCluster
    -- ** Request lenses
    , decEcsClusterARN

    -- * Response
    , DeregisterEcsClusterResponse
    -- ** Response constructor
    , deregisterEcsClusterResponse
    ) where

import           Network.AWS.OpsWorks.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'deregisterEcsCluster' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'decEcsClusterARN'
newtype DeregisterEcsCluster = DeregisterEcsCluster'
    { _decEcsClusterARN :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeregisterEcsCluster' smart constructor.
deregisterEcsCluster :: Text -> DeregisterEcsCluster
deregisterEcsCluster pEcsClusterARN_ =
    DeregisterEcsCluster'
    { _decEcsClusterARN = pEcsClusterARN_
    }

-- | The cluster\'s ARN.
decEcsClusterARN :: Lens' DeregisterEcsCluster Text
decEcsClusterARN = lens _decEcsClusterARN (\ s a -> s{_decEcsClusterARN = a});

instance AWSRequest DeregisterEcsCluster where
        type Sv DeregisterEcsCluster = OpsWorks
        type Rs DeregisterEcsCluster =
             DeregisterEcsClusterResponse
        request = postJSON
        response = receiveNull DeregisterEcsClusterResponse'

instance ToHeaders DeregisterEcsCluster where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("OpsWorks_20130218.DeregisterEcsCluster" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeregisterEcsCluster where
        toJSON DeregisterEcsCluster'{..}
          = object ["EcsClusterArn" .= _decEcsClusterARN]

instance ToPath DeregisterEcsCluster where
        toPath = const "/"

instance ToQuery DeregisterEcsCluster where
        toQuery = const mempty

-- | /See:/ 'deregisterEcsClusterResponse' smart constructor.
data DeregisterEcsClusterResponse =
    DeregisterEcsClusterResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeregisterEcsClusterResponse' smart constructor.
deregisterEcsClusterResponse :: DeregisterEcsClusterResponse
deregisterEcsClusterResponse = DeregisterEcsClusterResponse'